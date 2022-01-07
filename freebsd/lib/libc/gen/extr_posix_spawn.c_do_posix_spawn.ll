; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_do_posix_spawn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_do_posix_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_spawn_args = type { i8*, i8**, i8**, i32, i64, i32*, i32* }

@RFSPAWN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@WNOHANG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_RFORK_THREAD_STACK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i8**, i8**, i32)* @do_posix_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_posix_spawn(i32* %0, i8* %1, i32* %2, i32* %3, i8** %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.posix_spawn_args, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 6
  store i32* %20, i32** %21, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 5
  store i32* %22, i32** %23, align 8
  %24 = load i8**, i8*** %13, align 8
  %25 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 1
  store i8** %24, i8*** %25, align 8
  %26 = load i8**, i8*** %14, align 8
  %27 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 2
  store i8** %26, i8*** %27, align 8
  %28 = load i32, i32* %15, align 4
  %29 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @RFSPAWN, align 4
  %32 = call i32 @rfork(i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = call i32 @_posix_spawn_thr(%struct.posix_spawn_args* %16)
  br label %37

37:                                               ; preds = %35, %7
  %38 = load i32, i32* %17, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EINVAL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = call i32 @vfork() #3
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @_posix_spawn_thr(%struct.posix_spawn_args* %16)
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %40, %37
  %52 = load i32, i32* %17, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %76

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @WNOHANG, align 4
  %64 = call i32 @_waitpid(i32 %62, i32* null, i32 %63)
  br label %72

65:                                               ; preds = %57
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %61
  %73 = getelementptr inbounds %struct.posix_spawn_args, %struct.posix_spawn_args* %16, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %54
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @rfork(i32) #1

declare dso_local i32 @_posix_spawn_thr(%struct.posix_spawn_args*) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @_waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
