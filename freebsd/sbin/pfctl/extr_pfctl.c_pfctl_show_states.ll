; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_states = type { i32, i8*, %struct.pfsync_state* }
%struct.pfsync_state = type { i32 }

@PF_OPT_SHOWALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@DIOCGETSTATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"DIOCGETSTATES\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"STATES:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_show_states(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfioc_states, align 8
  %9 = alloca %struct.pfsync_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %14, align 4
  %18 = call i32 @memset(%struct.pfioc_states* %8, i32 0, i32 24)
  br label %19

19:                                               ; preds = %76, %3
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i8* @realloc(i8* %25, i32 %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** %10, align 8
  %34 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %32, %19
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DIOCGETSTATES, align 4
  %38 = call i64 @ioctl(i32 %36, i32 %37, %struct.pfioc_states* %8)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @free(i8* %42)
  store i32 -1, i32* %4, align 4
  br label %118

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = zext i32 %46 to i64
  %48 = add i64 %47, 24
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %79

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %115

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %64, %61
  %72 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %115

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = mul i32 %77, 2
  store i32 %78, i32* %12, align 4
  br label %19

79:                                               ; preds = %52
  %80 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 2
  %81 = load %struct.pfsync_state*, %struct.pfsync_state** %80, align 8
  store %struct.pfsync_state* %81, %struct.pfsync_state** %9, align 8
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %107, %79
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds %struct.pfioc_states, %struct.pfioc_states* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.pfsync_state*, %struct.pfsync_state** %9, align 8
  %92 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @strcmp(i32 %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %107

98:                                               ; preds = %90, %87
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = load %struct.pfsync_state*, %struct.pfsync_state** %9, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @print_state(%struct.pfsync_state* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %13, align 4
  %112 = load %struct.pfsync_state*, %struct.pfsync_state** %9, align 8
  %113 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %112, i32 1
  store %struct.pfsync_state* %113, %struct.pfsync_state** %9, align 8
  br label %82

114:                                              ; preds = %82
  br label %115

115:                                              ; preds = %114, %75, %60
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @free(i8* %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %40
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @memset(%struct.pfioc_states*, i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_states*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pfctl_print_title(i8*) #1

declare dso_local i32 @print_state(%struct.pfsync_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
