; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kthr.c_kgdb_thr_add_procs.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kthr.c_kgdb_thr_add_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthr = type { i64, i64, i64, i64, i64, i32, i32, %struct.kthr* }
%struct.proc = type { i64, i64, i32, i32, i64, i32 }
%struct.thread = type { i64, i64, i32, i32, i64, i32 }

@kvm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kvm_read: %s\00", align 1
@first = common dso_local global %struct.kthr* null, align 8
@dumptid = common dso_local global i64 0, align 8
@dumppcb = common dso_local global i64 0, align 8
@NOCPU = common dso_local global i64 0, align 8
@stopped_cpus = common dso_local global i32 0, align 4
@td_plist = common dso_local global i32 0, align 4
@p_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @kgdb_thr_add_procs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_thr_add_procs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.proc, align 8
  %4 = alloca %struct.thread, align 8
  %5 = alloca %struct.kthr*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  br label %7

7:                                                ; preds = %98, %1
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %102

10:                                               ; preds = %7
  %11 = load i32, i32* @kvm, align 4
  %12 = load i64, i64* %2, align 8
  %13 = bitcast %struct.proc* %3 to %struct.thread*
  %14 = call i32 @kvm_read(i32 %11, i64 %12, %struct.thread* %13, i32 40)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 40
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @kvm, align 4
  %19 = call i32 @kvm_geterr(i32 %18)
  %20 = call i32 @warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %102

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %3, i32 0, i32 5
  %23 = call i64 @TAILQ_FIRST(i32* %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %75, %21
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %24
  %28 = load i32, i32* @kvm, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @kvm_read(i32 %28, i64 %29, %struct.thread* %4, i32 40)
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 40
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @kvm, align 4
  %35 = call i32 @kvm_geterr(i32 %34)
  %36 = call i32 @warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %98

37:                                               ; preds = %27
  %38 = call %struct.kthr* @malloc(i32 56)
  store %struct.kthr* %38, %struct.kthr** %5, align 8
  %39 = load %struct.kthr*, %struct.kthr** @first, align 8
  %40 = load %struct.kthr*, %struct.kthr** %5, align 8
  %41 = getelementptr inbounds %struct.kthr, %struct.kthr* %40, i32 0, i32 7
  store %struct.kthr* %39, %struct.kthr** %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.kthr*, %struct.kthr** %5, align 8
  %44 = getelementptr inbounds %struct.kthr, %struct.kthr* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @dumptid, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i64, i64* @dumppcb, align 8
  %51 = load %struct.kthr*, %struct.kthr** %5, align 8
  %52 = getelementptr inbounds %struct.kthr, %struct.kthr* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %75

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NOCPU, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @CPU_ISSET(i64 %60, i32* @stopped_cpus)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @kgdb_trgt_core_pcb(i64 %65)
  %67 = load %struct.kthr*, %struct.kthr** %5, align 8
  %68 = getelementptr inbounds %struct.kthr, %struct.kthr* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %74

69:                                               ; preds = %58, %53
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.kthr*, %struct.kthr** %5, align 8
  %73 = getelementptr inbounds %struct.kthr, %struct.kthr* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %49
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.kthr*, %struct.kthr** %5, align 8
  %79 = getelementptr inbounds %struct.kthr, %struct.kthr* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.kthr*, %struct.kthr** %5, align 8
  %83 = getelementptr inbounds %struct.kthr, %struct.kthr* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = getelementptr inbounds %struct.proc, %struct.proc* %3, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.kthr*, %struct.kthr** %5, align 8
  %87 = getelementptr inbounds %struct.kthr, %struct.kthr* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load i64, i64* %2, align 8
  %89 = load %struct.kthr*, %struct.kthr** %5, align 8
  %90 = getelementptr inbounds %struct.kthr, %struct.kthr* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.kthr*, %struct.kthr** %5, align 8
  %94 = getelementptr inbounds %struct.kthr, %struct.kthr* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  %95 = load %struct.kthr*, %struct.kthr** %5, align 8
  store %struct.kthr* %95, %struct.kthr** @first, align 8
  %96 = load i32, i32* @td_plist, align 4
  %97 = call i64 @TAILQ_NEXT(%struct.thread* %4, i32 %96)
  store i64 %97, i64* %6, align 8
  br label %24

98:                                               ; preds = %33, %24
  %99 = bitcast %struct.proc* %3 to %struct.thread*
  %100 = load i32, i32* @p_list, align 4
  %101 = call i64 @LIST_NEXT(%struct.thread* %99, i32 %100)
  store i64 %101, i64* %2, align 8
  br label %7

102:                                              ; preds = %17, %7
  ret void
}

declare dso_local i32 @kvm_read(i32, i64, %struct.thread*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @kvm_geterr(i32) #1

declare dso_local i64 @TAILQ_FIRST(i32*) #1

declare dso_local %struct.kthr* @malloc(i32) #1

declare dso_local i64 @CPU_ISSET(i64, i32*) #1

declare dso_local i64 @kgdb_trgt_core_pcb(i64) #1

declare dso_local i64 @TAILQ_NEXT(%struct.thread*, i32) #1

declare dso_local i64 @LIST_NEXT(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
