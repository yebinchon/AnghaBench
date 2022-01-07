; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_adreq_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_adreq_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreq = type { i32, i64, i8*, i64 }

@adreq_fill.seq = internal global i32 1, align 4
@ADIST_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid command (%hhu).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adreq*, i32, i8*, i64)* @adreq_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adreq_fill(%struct.adreq* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.adreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.adreq* %0, %struct.adreq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ADIST_BUF_SIZE, align 8
  %11 = icmp ule i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @PJDLOG_ASSERT(i32 %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %49 [
    i32 128, label %15
    i32 131, label %15
    i32 132, label %29
    i32 129, label %39
    i32 130, label %39
  ]

15:                                               ; preds = %4, %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  br label %52

29:                                               ; preds = %4
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @PJDLOG_ASSERT(i32 %37)
  br label %52

39:                                               ; preds = %4, %4
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @PJDLOG_ASSERT(i32 %47)
  br label %52

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %45, %35, %21
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.adreq*, %struct.adreq** %5, align 8
  %55 = getelementptr inbounds %struct.adreq, %struct.adreq* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @adreq_fill.seq, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @adreq_fill.seq, align 4
  %58 = sext i32 %56 to i64
  %59 = load %struct.adreq*, %struct.adreq** %5, align 8
  %60 = getelementptr inbounds %struct.adreq, %struct.adreq* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.adreq*, %struct.adreq** %5, align 8
  %63 = getelementptr inbounds %struct.adreq, %struct.adreq* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %52
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.adreq*, %struct.adreq** %5, align 8
  %69 = getelementptr inbounds %struct.adreq, %struct.adreq* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.adreq*, %struct.adreq** %5, align 8
  %75 = getelementptr inbounds %struct.adreq, %struct.adreq* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @bcopy(i8* %73, i8* %76, i64 %77)
  br label %79

79:                                               ; preds = %72, %66, %52
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
