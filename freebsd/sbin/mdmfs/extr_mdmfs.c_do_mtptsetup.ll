; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_do_mtptsetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_do_mtptsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpt_info = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.statfs = type { i32 }

@norun = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"statfs: %s\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Not changing mode/owner of %s since it is read-only\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"changing mode of %s to %o.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"chmod: %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"changing owner (user) or %s to %u.\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"chown %s to %u (user)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"changing owner (group) or %s to %u.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"chown %s to %u (group)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mtpt_info*)* @do_mtptsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_mtptsetup(i8* %0, %struct.mtpt_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtpt_info*, align 8
  %5 = alloca %struct.statfs, align 4
  store i8* %0, i8** %3, align 8
  store %struct.mtpt_info* %1, %struct.mtpt_info** %4, align 8
  %6 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %7 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %12 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %17 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %131

21:                                               ; preds = %15, %10, %2
  %22 = load i32, i32* @norun, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @statfs(i8* %25, %struct.statfs* %5)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %131

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.statfs, %struct.statfs* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MNT_RDONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %39 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 (i8*, i8*, ...) @debugprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %131

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %52 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %58 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, i8*, ...) @debugprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %59)
  %61 = load i32, i32* @norun, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %55
  %64 = load i8*, i8** %3, align 8
  %65 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %66 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @chmod(i8* %64, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %77 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %83 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i8*, ...) @debugprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %81, i32 %84)
  %86 = load i32, i32* @norun, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %80
  %89 = load i8*, i8** %3, align 8
  %90 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %91 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @chown(i8* %89, i32 %92, i32 -1)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i8*, i8** %3, align 8
  %97 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %98 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %88
  br label %102

102:                                              ; preds = %101, %80
  br label %103

103:                                              ; preds = %102, %75
  %104 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %105 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %103
  %109 = load i8*, i8** %3, align 8
  %110 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %111 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, i8*, ...) @debugprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %109, i32 %112)
  %114 = load i32, i32* @norun, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %108
  %117 = load i8*, i8** %3, align 8
  %118 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %119 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @chown(i8* %117, i32 -1, i32 %120)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i8*, i8** %3, align 8
  %125 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %126 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %116
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %20, %28, %48, %130, %103
  ret void
}

declare dso_local i32 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @debugprintf(i8*, i8*, ...) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @chown(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
