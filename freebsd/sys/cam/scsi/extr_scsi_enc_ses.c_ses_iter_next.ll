; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_iter_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ses_iterator = type { i32, i64, i64, %struct.TYPE_6__*, i8*, i8* }
%struct.TYPE_6__ = type { i32*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@ITERATOR_INDEX_END = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Corrupted element iterator. %d not less than %d\00", align 1
@ITERATOR_INDEX_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ses_iterator*)* @ses_iter_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ses_iter_next(%struct.ses_iterator* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ses_iterator*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.ses_iterator* %0, %struct.ses_iterator** %3, align 8
  %6 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %7 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %15 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = icmp sge i32 %13, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load i8*, i8** @ITERATOR_INDEX_END, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %26 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i8*, i8** @ITERATOR_INDEX_END, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %30 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i8*, i8** @ITERATOR_INDEX_END, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %34 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @ITERATOR_INDEX_END, align 8
  %36 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %37 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @ITERATOR_INDEX_END, align 8
  %39 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %40 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  store i32* null, i32** %2, align 8
  br label %115

41:                                               ; preds = %1
  %42 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %43 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %51 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @KASSERT(i32 %49, i8* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %62 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %63
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %5, align 8
  %65 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %66 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %70 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %74 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %75, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %41
  %83 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %84 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %88 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load i8*, i8** @ITERATOR_INDEX_INVALID, align 8
  %90 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %91 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %82, %41
  %93 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %94 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %99 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %99, align 8
  %102 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %103 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %92
  %105 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %106 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.ses_iterator*, %struct.ses_iterator** %3, align 8
  %111 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32* %114, i32** %2, align 8
  br label %115

115:                                              ; preds = %104, %22
  %116 = load i32*, i32** %2, align 8
  ret i32* %116
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
