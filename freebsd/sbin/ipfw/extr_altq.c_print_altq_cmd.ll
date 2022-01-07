; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_altq.c_print_altq_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_altq.c_print_altq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c" altq ?<%u>\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" altq %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_altq_cmd(%struct.buf_pr* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @altq_qid_to_name(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @bprintf(%struct.buf_pr* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %25

21:                                               ; preds = %8
  %22 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @bprintf(%struct.buf_pr* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

declare dso_local i8* @altq_qid_to_name(i8*) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
