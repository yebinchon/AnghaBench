; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fdopen.c_fdopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fdopen.c_fdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }

@SHRT_MAX = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_EXEC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@__S2OAP = common dso_local global i32 0, align 4
@__SAPP = common dso_local global i32 0, align 4
@__sread = common dso_local global i32 0, align 4
@__swrite = common dso_local global i32 0, align 4
@__sseek = common dso_local global i32 0, align 4
@__sclose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @fdopen(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SHRT_MAX, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EMFILE, align 4
  store i32 %15, i32* @errno, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %108

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @__sflags(i8* %17, i32* %8)
  store i32 %18, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %108

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @F_GETFL, align 4
  %24 = call i32 @_fcntl(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %108

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @O_ACCMODE, align 4
  %30 = load i32, i32* @O_EXEC, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @O_RDWR, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @O_ACCMODE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* @errno, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %108

44:                                               ; preds = %36, %27
  %45 = call %struct.TYPE_4__* (...) @__sfp()
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %6, align 8
  %46 = icmp eq %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %108

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @O_CLOEXEC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @F_SETFD, align 4
  %56 = load i32, i32* @FD_CLOEXEC, align 4
  %57 = call i32 @_fcntl(i32 %54, i32 %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %108

62:                                               ; preds = %53, %48
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @O_APPEND, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* @__S2OAP, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %88

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @O_APPEND, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @__SAPP, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %76
  br label %88

88:                                               ; preds = %87, %70
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 6
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %94, align 8
  %95 = load i32, i32* @__sread, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @__swrite, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @__sseek, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @__sclose, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %3, align 8
  br label %108

108:                                              ; preds = %88, %59, %47, %42, %26, %20, %14
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %109
}

declare dso_local i32 @__sflags(i8*, i32*) #1

declare dso_local i32 @_fcntl(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @__sfp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
