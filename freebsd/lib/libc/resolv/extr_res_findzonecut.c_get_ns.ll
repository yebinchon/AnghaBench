; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_get_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_get_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_MAXMSG = common dso_local global i32 0, align 4
@ns_t_ns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"get_ns: do_query('%s', %s) failed (%d)\00", align 1
@ns_s_an = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"get_ns save_ns('%s', %s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32*)* @get_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ns(i32 %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @NS_MAXMSG, align 4
  %16 = call i32* @malloc(i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %60

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ns_t_ns, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @do_query(i32 %21, i8* %22, i32 %23, i32 %24, i32* %25, i32* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @p_class(i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @DPRINTF(i8* %35)
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @free(i32* %37)
  store i32 -1, i32* %6, align 4
  br label %60

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ns_s_an, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @save_ns(i32 %40, i32* %13, i32 %41, i8* %42, i32 %43, i32 %44, i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @p_class(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @DPRINTF(i8* %53)
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @free(i32* %55)
  store i32 -1, i32* %6, align 4
  br label %60

57:                                               ; preds = %39
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @free(i32* %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %48, %29, %19
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @do_query(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @p_class(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @save_ns(i32, i32*, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
