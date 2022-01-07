; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_satisfy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_satisfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.res_sockaddr_union = type { i32 }
%struct.TYPE_7__ = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"satisfy(%s): %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, %union.res_sockaddr_union*, i32)* @satisfy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @satisfy(i32 %0, i8* %1, i32* %2, %union.res_sockaddr_union* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.res_sockaddr_union*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %union.res_sockaddr_union* %3, %union.res_sockaddr_union** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.TYPE_7__* @find_ns(i32* %14, i8* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %22 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @add_addrs(i32 %20, %struct.TYPE_7__* %21, %union.res_sockaddr_union* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %9, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %union.res_sockaddr_union, %union.res_sockaddr_union* %26, i64 %27
  store %union.res_sockaddr_union* %28, %union.res_sockaddr_union** %9, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %19, %5
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_7__* @HEAD(i32 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %11, align 8
  br label %39

39:                                               ; preds = %71, %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %75

47:                                               ; preds = %45
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @ns_samename(i32 %50, i8* %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @add_addrs(i32 %55, %struct.TYPE_7__* %56, %union.res_sockaddr_union* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %9, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %union.res_sockaddr_union, %union.res_sockaddr_union* %61, i64 %62
  store %union.res_sockaddr_union* %63, %union.res_sockaddr_union** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %54, %47
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = load i32, i32* @link, align 4
  %74 = call %struct.TYPE_7__* @NEXT(%struct.TYPE_7__* %72, i32 %73)
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %11, align 8
  br label %39

75:                                               ; preds = %45
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @DPRINTF(i8* %79)
  %81 = load i32, i32* %12, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_7__* @find_ns(i32*, i8*) #1

declare dso_local i32 @add_addrs(i32, %struct.TYPE_7__*, %union.res_sockaddr_union*, i32) #1

declare dso_local %struct.TYPE_7__* @HEAD(i32) #1

declare dso_local i32 @ns_samename(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @NEXT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
