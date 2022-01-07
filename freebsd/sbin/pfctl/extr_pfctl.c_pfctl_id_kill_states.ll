; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_id_kill_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_id_kill_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_state_kill = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@state_killers = common dso_local global i32 0, align 4
@state_kill = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"no id specified\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%jx/%x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%jx\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"wrong id format specified\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cannot kill id 0\00", align 1
@DIOCKILLSTATES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"DIOCKILLSTATES\00", align 1
@PF_OPT_QUIET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"killed %d states\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_id_kill_states(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfioc_state_kill, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @state_killers, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** @state_kill, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strlen(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %3
  %17 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %16, %10
  %20 = call i32 @memset(%struct.pfioc_state_kill* %7, i32 0, i32 24)
  %21 = load i32*, i32** @state_kill, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 (i32, i8*, i64*, ...) @sscanf(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %25, i64* %27)
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @HTONL(i64 %33)
  br label %50

35:                                               ; preds = %19
  %36 = load i32*, i32** @state_kill, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 (i32, i8*, i64*, ...) @sscanf(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %49

46:                                               ; preds = %35
  %47 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %30
  %51 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %55, %50
  %59 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @htobe64(i64 %61)
  %63 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DIOCKILLSTATES, align 4
  %67 = call i64 @ioctl(i32 %65, i32 %66, %struct.pfioc_state_kill* %7)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PF_OPT_QUIET, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  ret i32 0
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(%struct.pfioc_state_kill*, i32, i32) #1

declare dso_local i32 @sscanf(i32, i8*, i64*, ...) #1

declare dso_local i32 @HTONL(i64) #1

declare dso_local i64 @htobe64(i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_state_kill*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
