; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_read_master_encryptionkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_read_master_encryptionkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to open %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error reading %s: %s\00", align 1
@ETYPE_DES_CBC_CRC = common dso_local global i64 0, align 8
@ETYPE_DES_CBC_MD5 = common dso_local global i64 0, align 8
@ETYPE_DES_CFB64_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @read_master_encryptionkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_master_encryptionkey(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_BINARY, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @krb5_set_error_message(i32 %25, i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29)
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %4, align 4
  br label %79

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %35 = call i64 @read(i32 %33, i8* %34, i32 256)
  store i64 %35, i64* %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 @krb5_set_error_message(i32 %42, i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %46)
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %4, align 4
  br label %79

49:                                               ; preds = %32
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @decode_EncryptionKey(i8* %50, i64 %51, %struct.TYPE_5__* %9, i64* %13)
  store i32 %52, i32* %10, align 4
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %54 = call i32 @memset(i8* %53, i32 0, i32 256)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %79

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ETYPE_DES_CBC_CRC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ETYPE_DES_CBC_MD5, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %59
  %70 = load i64, i64* @ETYPE_DES_CFB64_NONE, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @hdb_process_master_key(i32 %73, i32 0, %struct.TYPE_5__* %9, i32 0, i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @krb5_free_keyblock_contents(i32 %76, %struct.TYPE_5__* %9)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %57, %40, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @decode_EncryptionKey(i8*, i64, %struct.TYPE_5__*, i64*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @hdb_process_master_key(i32, i32, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
