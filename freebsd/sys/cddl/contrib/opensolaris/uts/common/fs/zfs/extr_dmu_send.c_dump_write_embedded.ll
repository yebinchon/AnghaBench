; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dump_write_embedded.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dump_write_embedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drr_write_embedded }
%struct.drr_write_embedded = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@BPE_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@PENDING_NONE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@DRR_WRITE_EMBEDDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i32, i32*)* @dump_write_embedded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_write_embedded(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.drr_write_embedded*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @BPE_PAYLOAD_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.drr_write_embedded* %24, %struct.drr_write_embedded** %14, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PENDING_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %5
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = call i64 @dump_record(%struct.TYPE_7__* %31, i8* null, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @EINTR, align 4
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %95

36:                                               ; preds = %30
  %37 = load i64, i64* @PENDING_NONE, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %5
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @BP_IS_EMBEDDED(i32* %41)
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @bzero(%struct.TYPE_8__* %46, i32 4)
  %48 = load i32, i32* @DRR_WRITE_EMBEDDED, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %55 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %58 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %61 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %66 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @BP_GET_COMPRESS(i32* %67)
  %69 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %70 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @BPE_GET_ETYPE(i32* %71)
  %73 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %74 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @BPE_GET_LSIZE(i32* %75)
  %77 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %78 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @BPE_GET_PSIZE(i32* %79)
  %81 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %82 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @decode_embedded_bp_compressed(i32* %83, i8* %19)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %87 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @P2ROUNDUP(i32 %88, i32 8)
  %90 = call i64 @dump_record(%struct.TYPE_7__* %85, i8* %19, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %40
  %93 = load i32, i32* @EINTR, align 4
  store i32 %93, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %95

94:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %92, %34
  %96 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dump_record(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @BP_IS_EMBEDDED(i32*) #2

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @BP_GET_COMPRESS(i32*) #2

declare dso_local i32 @BPE_GET_ETYPE(i32*) #2

declare dso_local i32 @BPE_GET_LSIZE(i32*) #2

declare dso_local i32 @BPE_GET_PSIZE(i32*) #2

declare dso_local i32 @decode_embedded_bp_compressed(i32*, i8*) #2

declare dso_local i32 @P2ROUNDUP(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
