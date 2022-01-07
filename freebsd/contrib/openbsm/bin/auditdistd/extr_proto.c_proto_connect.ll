; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i32 }

@PROTO_SIDE_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_connect(i8* %0, i8* %1, i32 %2, %struct.proto_conn** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proto_conn**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.proto_conn** %3, %struct.proto_conn*** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %11, %4
  %18 = phi i1 [ true, %4 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @PJDLOG_ASSERT(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 @PJDLOG_ASSERT(i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PROTO_SIDE_CLIENT, align 4
  %33 = load %struct.proto_conn**, %struct.proto_conn*** %8, align 8
  %34 = call i32 @proto_common_setup(i8* %29, i8* %30, i32 %31, i32 %32, %struct.proto_conn** %33)
  ret i32 %34
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_common_setup(i8*, i8*, i32, i32, %struct.proto_conn**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
