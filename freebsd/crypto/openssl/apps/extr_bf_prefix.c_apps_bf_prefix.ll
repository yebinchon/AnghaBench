; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_bf_prefix.c_apps_bf_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_bf_prefix.c_apps_bf_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prefix_meth = common dso_local global i32* null, align 8
@BIO_TYPE_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Prefix filter\00", align 1
@prefix_create = common dso_local global i32 0, align 4
@prefix_destroy = common dso_local global i32 0, align 4
@prefix_write = common dso_local global i32 0, align 4
@prefix_read = common dso_local global i32 0, align 4
@prefix_puts = common dso_local global i32 0, align 4
@prefix_gets = common dso_local global i32 0, align 4
@prefix_ctrl = common dso_local global i32 0, align 4
@prefix_callback_ctrl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @apps_bf_prefix() #0 {
  %1 = load i32*, i32** @prefix_meth, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %51

3:                                                ; preds = %0
  %4 = load i32, i32* @BIO_TYPE_FILTER, align 4
  %5 = call i32* @BIO_meth_new(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** @prefix_meth, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = load i32*, i32** @prefix_meth, align 8
  %9 = load i32, i32* @prefix_create, align 4
  %10 = call i32 @BIO_meth_set_create(i32* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %7
  %13 = load i32*, i32** @prefix_meth, align 8
  %14 = load i32, i32* @prefix_destroy, align 4
  %15 = call i32 @BIO_meth_set_destroy(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load i32*, i32** @prefix_meth, align 8
  %19 = load i32, i32* @prefix_write, align 4
  %20 = call i32 @BIO_meth_set_write_ex(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i32*, i32** @prefix_meth, align 8
  %24 = load i32, i32* @prefix_read, align 4
  %25 = call i32 @BIO_meth_set_read_ex(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i32*, i32** @prefix_meth, align 8
  %29 = load i32, i32* @prefix_puts, align 4
  %30 = call i32 @BIO_meth_set_puts(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32*, i32** @prefix_meth, align 8
  %34 = load i32, i32* @prefix_gets, align 4
  %35 = call i32 @BIO_meth_set_gets(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32*, i32** @prefix_meth, align 8
  %39 = load i32, i32* @prefix_ctrl, align 4
  %40 = call i32 @BIO_meth_set_ctrl(i32* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32*, i32** @prefix_meth, align 8
  %44 = load i32, i32* @prefix_callback_ctrl, align 4
  %45 = call i32 @BIO_meth_set_callback_ctrl(i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %37, %32, %27, %22, %17, %12, %7, %3
  %48 = load i32*, i32** @prefix_meth, align 8
  %49 = call i32 @BIO_meth_free(i32* %48)
  store i32* null, i32** @prefix_meth, align 8
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %0
  %52 = load i32*, i32** @prefix_meth, align 8
  ret i32* %52
}

declare dso_local i32* @BIO_meth_new(i32, i8*) #1

declare dso_local i32 @BIO_meth_set_create(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_destroy(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_write_ex(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_read_ex(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_puts(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_gets(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_ctrl(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_callback_ctrl(i32*, i32) #1

declare dso_local i32 @BIO_meth_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
