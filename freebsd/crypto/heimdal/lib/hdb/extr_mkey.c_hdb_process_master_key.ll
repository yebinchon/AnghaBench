; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_hdb_process_master_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_hdb_process_master_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"K/M\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_process_master_key(i32 %0, i32 %1, i32* %2, i64 %3, %struct.TYPE_8__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_8__** %4, %struct.TYPE_8__*** %11, align 8
  %13 = call %struct.TYPE_8__* @calloc(i32 1, i32 32)
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %14, align 8
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* @ENOMEM, align 8
  %21 = call i32 @krb5_set_error_message(i32 %19, i64 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @ENOMEM, align 8
  store i64 %22, i64* %6, align 8
  br label %83

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = call i64 @krb5_parse_name(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %76

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = call i64 @krb5_copy_keyblock_contents(i32 %39, i32* %40, %struct.TYPE_9__* %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %76

49:                                               ; preds = %38
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i64 %53, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %49
  %60 = call i32 @time(i32* null)
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i64 @krb5_crypto_init(i32 %65, i32* %66, i64 %67, i32* %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %76

75:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %83

76:                                               ; preds = %74, %48, %37
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = call i32 @hdb_free_master_key(i32 %77, %struct.TYPE_8__* %79)
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %81, align 8
  %82 = load i64, i64* %12, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %76, %75, %18
  %84 = load i64, i64* %6, align 8
  ret i64 %84
}

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i64 @krb5_copy_keyblock_contents(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i64, i32*) #1

declare dso_local i32 @hdb_free_master_key(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
