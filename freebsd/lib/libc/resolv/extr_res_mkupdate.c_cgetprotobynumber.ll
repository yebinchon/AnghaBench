; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_cgetprotobynumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_cgetprotobynumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { i32, i32, %struct.valuelist*, %struct.valuelist* }
%struct.protoent = type { i32, i32 }

@protolist = common dso_local global %struct.valuelist* null, align 8
@cgetprotobynumber.prot = internal global %struct.protoent zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.protoent* (i32)* @cgetprotobynumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.protoent* @cgetprotobynumber(i32 %0) #0 {
  %2 = alloca %struct.protoent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.valuelist**, align 8
  %5 = alloca %struct.valuelist*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.valuelist** @protolist, %struct.valuelist*** %4, align 8
  %6 = load %struct.valuelist**, %struct.valuelist*** %4, align 8
  %7 = load %struct.valuelist*, %struct.valuelist** %6, align 8
  store %struct.valuelist* %7, %struct.valuelist** %5, align 8
  br label %8

8:                                                ; preds = %61, %1
  %9 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %10 = icmp ne %struct.valuelist* %9, null
  br i1 %10, label %11, label %65

11:                                               ; preds = %8
  %12 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %13 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %19 = load %struct.valuelist**, %struct.valuelist*** %4, align 8
  %20 = load %struct.valuelist*, %struct.valuelist** %19, align 8
  %21 = icmp ne %struct.valuelist* %18, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %24 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %23, i32 0, i32 2
  %25 = load %struct.valuelist*, %struct.valuelist** %24, align 8
  %26 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %27 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %26, i32 0, i32 3
  %28 = load %struct.valuelist*, %struct.valuelist** %27, align 8
  %29 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %28, i32 0, i32 2
  store %struct.valuelist* %25, %struct.valuelist** %29, align 8
  %30 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %31 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %30, i32 0, i32 2
  %32 = load %struct.valuelist*, %struct.valuelist** %31, align 8
  %33 = icmp ne %struct.valuelist* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %36 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %35, i32 0, i32 3
  %37 = load %struct.valuelist*, %struct.valuelist** %36, align 8
  %38 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %39 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %38, i32 0, i32 2
  %40 = load %struct.valuelist*, %struct.valuelist** %39, align 8
  %41 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %40, i32 0, i32 3
  store %struct.valuelist* %37, %struct.valuelist** %41, align 8
  br label %42

42:                                               ; preds = %34, %22
  %43 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %44 = load %struct.valuelist**, %struct.valuelist*** %4, align 8
  %45 = load %struct.valuelist*, %struct.valuelist** %44, align 8
  %46 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %45, i32 0, i32 3
  store %struct.valuelist* %43, %struct.valuelist** %46, align 8
  %47 = load %struct.valuelist**, %struct.valuelist*** %4, align 8
  %48 = load %struct.valuelist*, %struct.valuelist** %47, align 8
  %49 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %50 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %49, i32 0, i32 2
  store %struct.valuelist* %48, %struct.valuelist** %50, align 8
  %51 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %52 = load %struct.valuelist**, %struct.valuelist*** %4, align 8
  store %struct.valuelist* %51, %struct.valuelist** %52, align 8
  br label %53

53:                                               ; preds = %42, %17
  %54 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %55 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.protoent, %struct.protoent* @cgetprotobynumber.prot, i32 0, i32 1), align 4
  %57 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %58 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* getelementptr inbounds (%struct.protoent, %struct.protoent* @cgetprotobynumber.prot, i32 0, i32 0), align 4
  store %struct.protoent* @cgetprotobynumber.prot, %struct.protoent** %2, align 8
  br label %66

60:                                               ; preds = %11
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.valuelist*, %struct.valuelist** %5, align 8
  %63 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %62, i32 0, i32 2
  %64 = load %struct.valuelist*, %struct.valuelist** %63, align 8
  store %struct.valuelist* %64, %struct.valuelist** %5, align 8
  br label %8

65:                                               ; preds = %8
  store %struct.protoent* null, %struct.protoent** %2, align 8
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.protoent*, %struct.protoent** %2, align 8
  ret %struct.protoent* %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
