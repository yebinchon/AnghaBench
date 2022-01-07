; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_ctx = type { i32 }
%struct.nbns_rq = type { i32, i64, %struct.nb_ctx*, i32 }

@nbns_rq_create.trnid = internal global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NBDG_MAXSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbns_rq_create(i32 %0, %struct.nb_ctx* %1, %struct.nbns_rq** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nb_ctx*, align 8
  %7 = alloca %struct.nbns_rq**, align 8
  %8 = alloca %struct.nbns_rq*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.nb_ctx* %1, %struct.nb_ctx** %6, align 8
  store %struct.nbns_rq** %2, %struct.nbns_rq*** %7, align 8
  %10 = call %struct.nbns_rq* @malloc(i32 32)
  store %struct.nbns_rq* %10, %struct.nbns_rq** %8, align 8
  %11 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %12 = icmp eq %struct.nbns_rq* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %17 = call i32 @bzero(%struct.nbns_rq* %16, i32 32)
  %18 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %19 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %18, i32 0, i32 3
  %20 = load i32, i32* @NBDG_MAXSIZE, align 4
  %21 = call i32 @mb_init(i32* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %26 = call i32 @free(%struct.nbns_rq* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %31 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nb_ctx*, %struct.nb_ctx** %6, align 8
  %33 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %34 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %33, i32 0, i32 2
  store %struct.nb_ctx* %32, %struct.nb_ctx** %34, align 8
  %35 = load i32, i32* @nbns_rq_create.trnid, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @nbns_rq_create.trnid, align 4
  %37 = sext i32 %35 to i64
  %38 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %39 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nbns_rq*, %struct.nbns_rq** %8, align 8
  %41 = load %struct.nbns_rq**, %struct.nbns_rq*** %7, align 8
  store %struct.nbns_rq* %40, %struct.nbns_rq** %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %28, %24, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.nbns_rq* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.nbns_rq*, i32) #1

declare dso_local i32 @mb_init(i32*, i32) #1

declare dso_local i32 @free(%struct.nbns_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
