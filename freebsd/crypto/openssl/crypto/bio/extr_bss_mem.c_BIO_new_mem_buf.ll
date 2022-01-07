; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_mem.c_BIO_new_mem_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_mem.c_BIO_new_mem_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@BIO_F_BIO_NEW_MEM_BUF = common dso_local global i32 0, align 4
@BIO_R_NULL_PARAMETER = common dso_local global i32 0, align 4
@BIO_FLAGS_MEM_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @BIO_new_mem_buf(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @BIO_F_BIO_NEW_MEM_BUF, align 4
  %14 = load i32, i32* @BIO_R_NULL_PARAMETER, align 4
  %15 = call i32 @BIOerr(i32 %13, i32 %14)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %64

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i64 [ %21, %19 ], [ %24, %22 ]
  store i64 %26, i64* %9, align 8
  %27 = call i32 (...) @BIO_s_mem()
  %28 = call %struct.TYPE_8__* @BIO_new(i32 %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %6, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %64

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %7, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = bitcast %struct.TYPE_6__* %50 to i8*
  %55 = bitcast %struct.TYPE_6__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  %56 = load i32, i32* @BIO_FLAGS_MEM_RDONLY, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %3, align 8
  br label %64

64:                                               ; preds = %31, %30, %12
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %65
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_8__* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
