; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ucm_listen = type { i8*, i8*, i32 }

@IB_USER_CM_CMD_LISTEN = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_listen(%struct.ib_cm_id* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cm_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_ucm_listen*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load %struct.ib_ucm_listen*, %struct.ib_ucm_listen** %8, align 8
  %14 = load i32, i32* @IB_USER_CM_CMD_LISTEN, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @CM_CREATE_MSG_CMD(i8* %12, %struct.ib_ucm_listen* %13, i32 %14, i32 %15)
  %17 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %18 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ib_ucm_listen*, %struct.ib_ucm_listen** %8, align 8
  %21 = getelementptr inbounds %struct.ib_ucm_listen, %struct.ib_ucm_listen* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.ib_ucm_listen*, %struct.ib_ucm_listen** %8, align 8
  %24 = getelementptr inbounds %struct.ib_ucm_listen, %struct.ib_ucm_listen* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.ib_ucm_listen*, %struct.ib_ucm_listen** %8, align 8
  %27 = getelementptr inbounds %struct.ib_ucm_listen, %struct.ib_ucm_listen* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %29 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @write(i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENODATA, align 4
  %44 = call i32 @ERR(i32 %43)
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ -1, %45 ]
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_listen*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
