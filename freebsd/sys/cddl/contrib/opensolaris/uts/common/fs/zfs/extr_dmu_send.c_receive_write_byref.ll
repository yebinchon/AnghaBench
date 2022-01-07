; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_write_byref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_write_byref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_writer_arg = type { i32*, i32, i32 }
%struct.drr_write_byref = type { i64, i64, i64, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.receive_writer_arg*, %struct.drr_write_byref*)* @receive_write_byref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_write_byref(%struct.receive_writer_arg* %0, %struct.drr_write_byref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.receive_writer_arg*, align 8
  %5 = alloca %struct.drr_write_byref*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.receive_writer_arg* %0, %struct.receive_writer_arg** %4, align 8
  store %struct.drr_write_byref* %1, %struct.drr_write_byref** %5, align 8
  store i32* null, i32** %11, align 8
  %13 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %14 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %17 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %21 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %148

27:                                               ; preds = %2
  %28 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %29 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %32 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %37 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %41 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_7__* @avl_find(i32 %42, %struct.TYPE_7__* %8, i32* %10)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %9, align 8
  %44 = icmp eq %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %148

48:                                               ; preds = %35
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @dmu_objset_from_ds(i32 %51, i32** %11)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %148

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %27
  %59 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %60 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %11, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %64 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %67 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %72 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %75 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %62
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %79 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %82 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FTAG, align 4
  %85 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %86 = call i32 @dmu_buf_hold(i32* %77, i32 %80, i32 %83, i32 %84, %struct.TYPE_8__** %12, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %148

91:                                               ; preds = %76
  %92 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %93 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32* @dmu_tx_create(i32* %94)
  store i32* %95, i32** %6, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %98 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %101 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %104 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dmu_tx_hold_write(i32* %96, i32 %99, i64 %102, i64 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* @TXG_WAIT, align 4
  %109 = call i32 @dmu_tx_assign(i32* %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %91
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @dmu_tx_abort(i32* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %148

116:                                              ; preds = %91
  %117 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %118 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %121 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %124 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %127 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @dmu_write(i32* %119, i32 %122, i64 %125, i64 %128, i32 %131, i32* %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = load i32, i32* @FTAG, align 4
  %136 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %134, i32 %135)
  %137 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %138 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %139 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.drr_write_byref*, %struct.drr_write_byref** %5, align 8
  %142 = getelementptr inbounds %struct.drr_write_byref, %struct.drr_write_byref* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @save_resume_state(%struct.receive_writer_arg* %137, i32 %140, i64 %143, i32* %144)
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @dmu_tx_commit(i32* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %116, %112, %89, %54, %45, %24
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_7__* @avl_find(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i64 @dmu_objset_from_ds(i32, i32**) #1

declare dso_local i32 @dmu_buf_hold(i32*, i32, i32, i32, %struct.TYPE_8__**, i32) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i64, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_write(i32*, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @save_resume_state(%struct.receive_writer_arg*, i32, i64, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
