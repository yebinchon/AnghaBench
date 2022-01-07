; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_label_kill_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_label_kill_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_state_kill = type { i32, i32, i32 }

@state_killers = common dso_local global i32 0, align 4
@state_kill = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [19 x i8] c"no label specified\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid interface: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"label too long: %s\00", align 1
@DIOCKILLSTATES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DIOCKILLSTATES\00", align 1
@PF_OPT_QUIET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"killed %d states\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_label_kill_states(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfioc_state_kill, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @state_killers, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i8**, i8*** @state_kill, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %3
  %17 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %16, %10
  %20 = call i32 @memset(%struct.pfioc_state_kill* %7, i32 0, i32 12)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlcpy(i32 %25, i8* %26, i32 4)
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %23, %19
  %34 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8**, i8*** @state_kill, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlcpy(i32 %35, i8* %38, i32 4)
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 4
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i8**, i8*** @state_kill, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DIOCKILLSTATES, align 4
  %50 = call i64 @ioctl(i32 %48, i32 %49, %struct.pfioc_state_kill* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PF_OPT_QUIET, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  ret i32 0
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(%struct.pfioc_state_kill*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_state_kill*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
