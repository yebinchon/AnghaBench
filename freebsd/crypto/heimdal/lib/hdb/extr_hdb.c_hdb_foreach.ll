; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (i32, %struct.TYPE_8__*, i32, i32*)*, i64 (i32, %struct.TYPE_8__*, i32, i32*)* }

@HDB_ERR_NOENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_foreach(i32 %0, %struct.TYPE_8__* %1, i32 %2, i64 (i32, %struct.TYPE_8__*, i32*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64 (i32, %struct.TYPE_8__*, i32*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 (i32, %struct.TYPE_8__*, i32*, i8*)* %3, i64 (i32, %struct.TYPE_8__*, i32*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64 (i32, %struct.TYPE_8__*, i32, i32*)*, i64 (i32, %struct.TYPE_8__*, i32, i32*)** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 %15(i32 %16, %struct.TYPE_8__* %17, i32 %18, i32* %12)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @krb5_clear_error_message(i32 %23)
  br label %25

25:                                               ; preds = %22, %5
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i64, i64* %11, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i64 (i32, %struct.TYPE_8__*, i32*, i8*)*, i64 (i32, %struct.TYPE_8__*, i32*, i8*)** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 %30(i32 %31, %struct.TYPE_8__* %32, i32* %12, i8* %33)
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @hdb_free_entry(i32 %35, i32* %12)
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64 (i32, %struct.TYPE_8__*, i32, i32*)*, i64 (i32, %struct.TYPE_8__*, i32, i32*)** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 %42(i32 %43, %struct.TYPE_8__* %44, i32 %45, i32* %12)
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %39, %29
  br label %26

48:                                               ; preds = %26
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @HDB_ERR_NOENTRY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i64, i64* %11, align 8
  ret i64 %54
}

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @hdb_free_entry(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
