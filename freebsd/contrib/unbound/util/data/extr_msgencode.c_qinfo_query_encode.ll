; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_qinfo_query_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_qinfo_query_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i8*, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qinfo_query_encode(i32* %0, %struct.query_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.query_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.query_info* %1, %struct.query_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.query_info*, %struct.query_info** %4, align 8
  %9 = getelementptr inbounds %struct.query_info, %struct.query_info* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.query_info*, %struct.query_info** %4, align 8
  %14 = getelementptr inbounds %struct.query_info, %struct.query_info* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.query_info*, %struct.query_info** %4, align 8
  %23 = getelementptr inbounds %struct.query_info, %struct.query_info* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i8* [ %20, %12 ], [ %24, %21 ]
  store i8* %26, i8** %6, align 8
  %27 = load %struct.query_info*, %struct.query_info** %4, align 8
  %28 = getelementptr inbounds %struct.query_info, %struct.query_info* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.query_info*, %struct.query_info** %4, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  br label %44

40:                                               ; preds = %25
  %41 = load %struct.query_info*, %struct.query_info** %4, align 8
  %42 = getelementptr inbounds %struct.query_info, %struct.query_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %40, %31
  %45 = phi i64 [ %39, %31 ], [ %43, %40 ]
  store i64 %45, i64* %7, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @sldns_buffer_clear(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @sldns_buffer_remaining(i32* %48)
  %50 = icmp sge i32 %49, 271
  %51 = zext i1 %50 to i32
  %52 = call i32 @log_assert(i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @sldns_buffer_skip(i32* %53, i32 2)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @sldns_buffer_write_u16(i32* %55, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @sldns_buffer_write_u16(i32* %58, i32 1)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @sldns_buffer_write(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @sldns_buffer_write(i32* %62, i8* %63, i64 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.query_info*, %struct.query_info** %4, align 8
  %68 = getelementptr inbounds %struct.query_info, %struct.query_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sldns_buffer_write_u16(i32* %66, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.query_info*, %struct.query_info** %4, align 8
  %73 = getelementptr inbounds %struct.query_info, %struct.query_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sldns_buffer_write_u16(i32* %71, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @sldns_buffer_flip(i32* %76)
  ret void
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write(i32*, i8*, i64) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
