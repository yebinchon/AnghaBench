; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c__posix_spawn_thr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c__posix_spawn_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_spawn_args = type { i8**, i64, i32, i32, i64, i32*, i32* }

@environ = common dso_local global i8** null, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_posix_spawn_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_posix_spawn_thr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.posix_spawn_args*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.posix_spawn_args*
  store %struct.posix_spawn_args* %6, %struct.posix_spawn_args** %3, align 8
  %7 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %8 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %13 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @process_spawnattr(i32 %15)
  %17 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %18 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %20 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call i32 @_exit(i32 127) #3
  unreachable

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %28 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %33 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @process_file_actions(i32 %35)
  %37 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %38 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %40 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 @_exit(i32 127) #3
  unreachable

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %48 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %53 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  br label %57

55:                                               ; preds = %46
  %56 = load i8**, i8*** @environ, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i8** [ %54, %51 ], [ %56, %55 ]
  store i8** %58, i8*** %4, align 8
  %59 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %60 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %65 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %68 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8**, i8*** %4, align 8
  %71 = call i32 @_execvpe(i32 %66, i32 %69, i8** %70)
  br label %81

72:                                               ; preds = %57
  %73 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %74 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %77 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i8**, i8*** %4, align 8
  %80 = call i32 @_execve(i32 %75, i32 %78, i8** %79)
  br label %81

81:                                               ; preds = %72, %63
  %82 = load i64, i64* @errno, align 8
  %83 = load %struct.posix_spawn_args*, %struct.posix_spawn_args** %3, align 8
  %84 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = call i32 @_exit(i32 127) #3
  unreachable
}

declare dso_local i64 @process_spawnattr(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @process_file_actions(i32) #1

declare dso_local i32 @_execvpe(i32, i32, i8**) #1

declare dso_local i32 @_execve(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
