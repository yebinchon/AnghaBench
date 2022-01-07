; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { %struct.node_host* }

@.str = private unnamed_addr constant [16 x i8] c"host_if: strdup\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@PFI_AFLAG_NETWORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@PFI_AFLAG_BROADCAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@PFI_AFLAG_PEER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@PFI_AFLAG_NOALIAS = common dso_local global i32 0, align 4
@PFI_AFLAG_MODEMASK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"illegal combination of interface modifiers\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"network or broadcast lookup, but extra netmask given\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @host_if(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.node_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node_host*, align 8
  %7 = alloca %struct.node_host*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node_host* null, %struct.node_host** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  br label %17

17:                                               ; preds = %63, %16
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @PFI_AFLAG_NETWORK, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %63

30:                                               ; preds = %21
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @PFI_AFLAG_BROADCAST, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %62

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @PFI_AFLAG_PEER, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %61

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @PFI_AFLAG_NOALIAS, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %60

57:                                               ; preds = %48
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @free(i8* %58)
  store %struct.node_host* null, %struct.node_host** %3, align 8
  br label %128

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %35
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i8*, i8** %8, align 8
  store i8 0, i8* %64, align 1
  br label %17

65:                                               ; preds = %17
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %66, %68
  %70 = load i32, i32* @PFI_AFLAG_MODEMASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  store %struct.node_host* null, %struct.node_host** %3, align 8
  br label %128

78:                                               ; preds = %65
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @PFI_AFLAG_NETWORK, align 4
  %81 = load i32, i32* @PFI_AFLAG_BROADCAST, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @free(i8* %91)
  store %struct.node_host* null, %struct.node_host** %3, align 8
  br label %128

93:                                               ; preds = %85, %78
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @ifa_exists(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* @IFNAMSIZ, align 4
  %100 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %97, %93
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call %struct.node_host* @ifa_lookup(i8* %103, i32 %104)
  store %struct.node_host* %105, %struct.node_host** %7, align 8
  %106 = load %struct.node_host*, %struct.node_host** %7, align 8
  store %struct.node_host* %106, %struct.node_host** %6, align 8
  br label %107

107:                                              ; preds = %119, %102
  %108 = load %struct.node_host*, %struct.node_host** %6, align 8
  %109 = icmp ne %struct.node_host* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = icmp sgt i32 %111, -1
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i1 [ false, %107 ], [ %112, %110 ]
  br i1 %114, label %115, label %123

115:                                              ; preds = %113
  %116 = load %struct.node_host*, %struct.node_host** %6, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @set_ipmask(%struct.node_host* %116, i32 %117)
  br label %119

119:                                              ; preds = %115
  %120 = load %struct.node_host*, %struct.node_host** %6, align 8
  %121 = getelementptr inbounds %struct.node_host, %struct.node_host* %120, i32 0, i32 0
  %122 = load %struct.node_host*, %struct.node_host** %121, align 8
  store %struct.node_host* %122, %struct.node_host** %6, align 8
  br label %107

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %97
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load %struct.node_host*, %struct.node_host** %7, align 8
  store %struct.node_host* %127, %struct.node_host** %3, align 8
  br label %128

128:                                              ; preds = %124, %88, %73, %57
  %129 = load %struct.node_host*, %struct.node_host** %3, align 8
  ret %struct.node_host* %129
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ifa_exists(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.node_host* @ifa_lookup(i8*, i32) #1

declare dso_local i32 @set_ipmask(%struct.node_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
