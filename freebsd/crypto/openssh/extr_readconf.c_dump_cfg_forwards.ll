; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_dump_cfg_forwards.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_dump_cfg_forwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Forward = type { i8*, i64, i8*, i8*, i64, i8* }

@oDynamicForward = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"socks\00", align 1
@oLocalForward = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PORT_STREAMLOCAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" [%s]:%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.Forward*)* @dump_cfg_forwards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cfg_forwards(i64 %0, i64 %1, %struct.Forward* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Forward*, align 8
  %7 = alloca %struct.Forward*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.Forward* %2, %struct.Forward** %6, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %118, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %121

13:                                               ; preds = %9
  %14 = load %struct.Forward*, %struct.Forward** %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.Forward, %struct.Forward* %14, i64 %15
  store %struct.Forward* %16, %struct.Forward** %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @oDynamicForward, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.Forward*, %struct.Forward** %7, align 8
  %22 = getelementptr inbounds %struct.Forward, %struct.Forward* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.Forward*, %struct.Forward** %7, align 8
  %27 = getelementptr inbounds %struct.Forward, %struct.Forward* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %118

32:                                               ; preds = %25, %20, %13
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @oLocalForward, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.Forward*, %struct.Forward** %7, align 8
  %38 = getelementptr inbounds %struct.Forward, %struct.Forward* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.Forward*, %struct.Forward** %7, align 8
  %43 = getelementptr inbounds %struct.Forward, %struct.Forward* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %118

48:                                               ; preds = %41, %36, %32
  %49 = load i64, i64* %4, align 8
  %50 = call i8* @lookup_opcode_name(i64 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load %struct.Forward*, %struct.Forward** %7, align 8
  %53 = getelementptr inbounds %struct.Forward, %struct.Forward* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PORT_STREAMLOCAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.Forward*, %struct.Forward** %7, align 8
  %59 = getelementptr inbounds %struct.Forward, %struct.Forward* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %81

62:                                               ; preds = %48
  %63 = load %struct.Forward*, %struct.Forward** %7, align 8
  %64 = getelementptr inbounds %struct.Forward, %struct.Forward* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.Forward*, %struct.Forward** %7, align 8
  %69 = getelementptr inbounds %struct.Forward, %struct.Forward* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  br label %80

72:                                               ; preds = %62
  %73 = load %struct.Forward*, %struct.Forward** %7, align 8
  %74 = getelementptr inbounds %struct.Forward, %struct.Forward* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.Forward*, %struct.Forward** %7, align 8
  %77 = getelementptr inbounds %struct.Forward, %struct.Forward* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %75, i64 %78)
  br label %80

80:                                               ; preds = %72, %67
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @oDynamicForward, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load %struct.Forward*, %struct.Forward** %7, align 8
  %87 = getelementptr inbounds %struct.Forward, %struct.Forward* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PORT_STREAMLOCAL, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.Forward*, %struct.Forward** %7, align 8
  %93 = getelementptr inbounds %struct.Forward, %struct.Forward* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %115

96:                                               ; preds = %85
  %97 = load %struct.Forward*, %struct.Forward** %7, align 8
  %98 = getelementptr inbounds %struct.Forward, %struct.Forward* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.Forward*, %struct.Forward** %7, align 8
  %103 = getelementptr inbounds %struct.Forward, %struct.Forward* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  br label %114

106:                                              ; preds = %96
  %107 = load %struct.Forward*, %struct.Forward** %7, align 8
  %108 = getelementptr inbounds %struct.Forward, %struct.Forward* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.Forward*, %struct.Forward** %7, align 8
  %111 = getelementptr inbounds %struct.Forward, %struct.Forward* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %109, i64 %112)
  br label %114

114:                                              ; preds = %106, %101
  br label %115

115:                                              ; preds = %114, %91
  br label %116

116:                                              ; preds = %115, %81
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %47, %31
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %9

121:                                              ; preds = %9
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @lookup_opcode_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
