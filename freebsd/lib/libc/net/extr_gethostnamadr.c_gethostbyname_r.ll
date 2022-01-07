; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.TYPE_7__ = type { i32 }

@RES_INIT = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@RES_USE_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gethostbyname_r(i8* %0, %struct.hostent* %1, i8* %2, i64 %3, %struct.hostent** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hostent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hostent**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.hostent* %1, %struct.hostent** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.hostent** %4, %struct.hostent*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = call %struct.TYPE_7__* (...) @__res_state()
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RES_INIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %24 = call i32 @res_ninit(%struct.TYPE_7__* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = load i32, i32* @NETDB_INTERNAL, align 4
  %29 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_7__* %27, i32 %28)
  store i32 -1, i32* %7, align 4
  br label %72

30:                                               ; preds = %22, %6
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RES_USE_INET6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load %struct.hostent*, %struct.hostent** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %44 = call i64 @fakeaddr(i8* %38, i32 %39, %struct.hostent* %40, i8* %41, i64 %42, %struct.TYPE_7__* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.hostent*, %struct.hostent** %9, align 8
  %48 = load %struct.hostent**, %struct.hostent*** %12, align 8
  store %struct.hostent* %47, %struct.hostent** %48, align 8
  store i32 0, i32* %7, align 4
  br label %72

49:                                               ; preds = %37
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @AF_INET6, align 4
  %52 = load %struct.hostent*, %struct.hostent** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.hostent**, %struct.hostent*** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = call i32 @gethostbyname_internal(i8* %50, i32 %51, %struct.hostent* %52, i8* %53, i64 %54, %struct.hostent** %55, i32* %56, %struct.TYPE_7__* %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %72

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @AF_INET, align 4
  %65 = load %struct.hostent*, %struct.hostent** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.hostent**, %struct.hostent*** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %71 = call i32 @gethostbyname_internal(i8* %63, i32 %64, %struct.hostent* %65, i8* %66, i64 %67, %struct.hostent** %68, i32* %69, %struct.TYPE_7__* %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %60, %46, %26
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_7__* @__res_state(...) #1

declare dso_local i32 @res_ninit(%struct.TYPE_7__*) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @fakeaddr(i8*, i32, %struct.hostent*, i8*, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @gethostbyname_internal(i8*, i32, %struct.hostent*, i8*, i64, %struct.hostent**, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
