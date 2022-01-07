; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_getrr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_getrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbns_rq = type { %struct.mbdata }
%struct.mbdata = type { i32* }
%struct.nbns_rr = type { i32, i32, i32, i32*, i32, i32* }

@NBERR_INVALIDRESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbns_rq_getrr(%struct.nbns_rq* %0, %struct.nbns_rr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbns_rq*, align 8
  %5 = alloca %struct.nbns_rr*, align 8
  %6 = alloca %struct.mbdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nbns_rq* %0, %struct.nbns_rq** %4, align 8
  store %struct.nbns_rr* %1, %struct.nbns_rr** %5, align 8
  %10 = load %struct.nbns_rq*, %struct.nbns_rq** %4, align 8
  %11 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %10, i32 0, i32 0
  store %struct.mbdata* %11, %struct.mbdata** %6, align 8
  %12 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %13 = call i32 @bzero(%struct.nbns_rr* %12, i32 40)
  %14 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %15 = getelementptr inbounds %struct.mbdata, %struct.mbdata* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @nb_encname_len(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @NBERR_INVALIDRESPONSE, align 4
  %23 = call i32 @NBERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %27 = getelementptr inbounds %struct.nbns_rr, %struct.nbns_rr* %26, i32 0, i32 5
  store i32* %25, i32** %27, align 8
  %28 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mb_get_mem(%struct.mbdata* %28, i32* null, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %24
  %36 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %37 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %38 = getelementptr inbounds %struct.nbns_rr, %struct.nbns_rr* %37, i32 0, i32 0
  %39 = call i32 @mb_get_uint16be(%struct.mbdata* %36, i32* %38)
  %40 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %41 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %42 = getelementptr inbounds %struct.nbns_rr, %struct.nbns_rr* %41, i32 0, i32 1
  %43 = call i32 @mb_get_uint16be(%struct.mbdata* %40, i32* %42)
  %44 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %45 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %46 = getelementptr inbounds %struct.nbns_rr, %struct.nbns_rr* %45, i32 0, i32 4
  %47 = call i32 @mb_get_uint32be(%struct.mbdata* %44, i32* %46)
  %48 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %49 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %50 = getelementptr inbounds %struct.nbns_rr, %struct.nbns_rr* %49, i32 0, i32 2
  %51 = call i32 @mb_get_uint16be(%struct.mbdata* %48, i32* %50)
  %52 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %53 = getelementptr inbounds %struct.mbdata, %struct.mbdata* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %56 = getelementptr inbounds %struct.nbns_rr, %struct.nbns_rr* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load %struct.mbdata*, %struct.mbdata** %6, align 8
  %58 = load %struct.nbns_rr*, %struct.nbns_rr** %5, align 8
  %59 = getelementptr inbounds %struct.nbns_rr, %struct.nbns_rr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mb_get_mem(%struct.mbdata* %57, i32* null, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %35, %33, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @bzero(%struct.nbns_rr*, i32) #1

declare dso_local i32 @nb_encname_len(i32*) #1

declare dso_local i32 @NBERROR(i32) #1

declare dso_local i32 @mb_get_mem(%struct.mbdata*, i32*, i32) #1

declare dso_local i32 @mb_get_uint16be(%struct.mbdata*, i32*) #1

declare dso_local i32 @mb_get_uint32be(%struct.mbdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
