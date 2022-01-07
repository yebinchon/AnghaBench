; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_server/extr_h_simpleserver.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_server/extr_h_simpleserver.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*)*, i32 }

@RUMP_DAEMONIZE_SUCCESS = common dso_local global i32 0, align 4
@actions = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %2
  %14 = call i32 (...) @rump_daemonize_begin()
  %15 = call i32 @NOFAIL(i32 %14)
  %16 = call i32 (...) @rump_init()
  %17 = call i32 @NOFAIL(i32 %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @rump_init_server(i8* %20)
  %22 = call i32 @NOFAIL(i32 %21)
  %23 = load i32, i32* @RUMP_DAEMONIZE_SUCCESS, align 4
  %24 = call i32 @rump_daemonize_done(i32 %23)
  %25 = call i32 @NOFAIL(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %75

28:                                               ; preds = %13
  store i8* null, i8** %8, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 3
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %31, %28
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @actions, align 8
  %39 = call i32 @__arraycount(%struct.TYPE_3__* %38)
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @actions, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i32 %47, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = call i32 (...) @rump_schedule()
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @actions, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (i8*)*, i32 (i8*)** %59, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 %60(i8* %61)
  %63 = call i32 (...) @rump_unschedule()
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %53, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %68
  %74 = call i32 (...) @pause()
  br label %78

75:                                               ; preds = %13
  br label %76

76:                                               ; preds = %76, %75
  %77 = call i32 (...) @pause()
  br label %76

78:                                               ; preds = %73
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @NOFAIL(i32) #2

declare dso_local i32 @rump_daemonize_begin(...) #2

declare dso_local i32 @rump_init(...) #2

declare dso_local i32 @rump_init_server(i8*) #2

declare dso_local i32 @rump_daemonize_done(i32) #2

declare dso_local i32 @__arraycount(%struct.TYPE_3__*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @rump_schedule(...) #2

declare dso_local i32 @rump_unschedule(...) #2

declare dso_local i32 @pause(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
