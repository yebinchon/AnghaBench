; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_get_version_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_get_version_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kadm5_log_get_version_fd(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SEEK_END, align 4
  %11 = call i32 @lseek(i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %36

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32* @krb5_storage_from_fd(i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @SEEK_CUR, align 4
  %26 = call i32 @krb5_storage_seek(i32* %24, i32 -4, i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @krb5_ret_int32(i32* %27, i32* %8)
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @krb5_storage_free(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SEEK_END, align 4
  %35 = call i32 @lseek(i32 %33, i32 0, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %21, %19, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i32 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
