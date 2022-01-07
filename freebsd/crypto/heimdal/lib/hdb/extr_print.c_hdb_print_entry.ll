; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_print.c_hdb_print_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_print.c_hdb_print_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_print_entry(i32 %0, i32* %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = call i32 @fflush(i32* %15)
  %17 = load i32*, i32** %12, align 8
  %18 = call i32 @fileno(i32* %17)
  %19 = call i32* @krb5_storage_from_fd(i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* @ENOMEM, align 8
  %25 = call i32 @krb5_set_error_message(i32 %23, i64 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @ENOMEM, align 8
  store i64 %26, i64* %5, align 8
  br label %44

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i64 @entry2string_int(i32 %28, i32* %29, i32* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @krb5_storage_free(i32* %36)
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %5, align 8
  br label %44

39:                                               ; preds = %27
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @krb5_storage_write(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @krb5_storage_free(i32* %42)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %39, %35, %22
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i64 @entry2string_int(i32, i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_storage_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
