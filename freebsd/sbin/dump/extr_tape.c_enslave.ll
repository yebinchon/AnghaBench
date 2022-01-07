; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_enslave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_enslave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@master = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@dumpabort = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@sigpipe = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@tperror = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@proceed = common dso_local global i32 0, align 4
@SLAVES = common dso_local global i32 0, align 4
@slp = common dso_local global %struct.TYPE_3__* null, align 8
@slaves = common dso_local global %struct.TYPE_3__* null, align 8
@caught = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"too many slaves, %d (recompile smaller): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@X_FINOK = common dso_local global i32 0, align 4
@write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enslave() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @getpid()
  store i64 %4, i64* @master, align 8
  %5 = load i32, i32* @SIGTERM, align 4
  %6 = load i32, i32* @dumpabort, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = load i32, i32* @SIGPIPE, align 4
  %9 = load i32, i32* @sigpipe, align 4
  %10 = call i32 @signal(i32 %8, i32 %9)
  %11 = load i32, i32* @SIGUSR1, align 4
  %12 = load i32, i32* @tperror, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  %14 = load i32, i32* @SIGUSR2, align 4
  %15 = load i32, i32* @proceed, align 4
  %16 = call i32 @signal(i32 %14, i32 %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %100, %0
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SLAVES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %103

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slp, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = ptrtoint %struct.TYPE_3__* %24 to i64
  %28 = ptrtoint %struct.TYPE_3__* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 24
  %31 = icmp eq i64 %23, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 1, i32* @caught, align 4
  br label %34

33:                                               ; preds = %21
  store i32 0, i32* @caught, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* @AF_UNIX, align 4
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %38 = call i64 @socketpair(i32 %35, i32 %36, i32 0, i32* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = call i64 (...) @fork()
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  %47 = icmp slt i64 %41, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40, %34
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @quit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %74

89:                                               ; preds = %74
  %90 = load i32, i32* @SIGINT, align 4
  %91 = load i32, i32* @SIG_IGN, align 4
  %92 = call i32 @signal(i32 %90, i32 %91)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @doslave(i32 %94, i32 %95)
  %97 = load i32, i32* @X_FINOK, align 4
  %98 = call i32 @Exit(i32 %97)
  br label %99

99:                                               ; preds = %89, %53
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %2, align 4
  br label %17

103:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %126, %103
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @SLAVES, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load i32, i32* @write, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slaves, align 8
  %117 = load i32, i32* %2, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @SLAVES, align 4
  %120 = srem i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = bitcast i64* %123 to i8*
  %125 = call i32 @atomic(i32 %109, i32 %115, i8* %124, i32 8)
  br label %126

126:                                              ; preds = %108
  %127 = load i32, i32* %2, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %2, align 4
  br label %104

129:                                              ; preds = %104
  store i64 0, i64* @master, align 8
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @quit(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @doslave(i32, i32) #1

declare dso_local i32 @Exit(i32) #1

declare dso_local i32 @atomic(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
