; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_cgetservbyport.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_cgetservbyport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { i32, i64, i32, %struct.valuelist*, %struct.valuelist* }
%struct.servent = type { i32, i32, i32 }

@servicelist = common dso_local global %struct.valuelist* null, align 8
@cgetservbyport.serv = internal global %struct.servent zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.servent* (i64, i8*)* @cgetservbyport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.servent* @cgetservbyport(i64 %0, i8* %1) #0 {
  %3 = alloca %struct.servent*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.valuelist**, align 8
  %7 = alloca %struct.valuelist*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.valuelist** @servicelist, %struct.valuelist*** %6, align 8
  %8 = load %struct.valuelist**, %struct.valuelist*** %6, align 8
  %9 = load %struct.valuelist*, %struct.valuelist** %8, align 8
  store %struct.valuelist* %9, %struct.valuelist** %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @ntohs(i64 %10)
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %77, %2
  %13 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %14 = icmp ne %struct.valuelist* %13, null
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %18 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %77

22:                                               ; preds = %15
  %23 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %24 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcasecmp(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %22
  %30 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %31 = load %struct.valuelist**, %struct.valuelist*** %6, align 8
  %32 = load %struct.valuelist*, %struct.valuelist** %31, align 8
  %33 = icmp ne %struct.valuelist* %30, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %36 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %35, i32 0, i32 3
  %37 = load %struct.valuelist*, %struct.valuelist** %36, align 8
  %38 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %39 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %38, i32 0, i32 4
  %40 = load %struct.valuelist*, %struct.valuelist** %39, align 8
  %41 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %40, i32 0, i32 3
  store %struct.valuelist* %37, %struct.valuelist** %41, align 8
  %42 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %43 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %42, i32 0, i32 3
  %44 = load %struct.valuelist*, %struct.valuelist** %43, align 8
  %45 = icmp ne %struct.valuelist* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %48 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %47, i32 0, i32 4
  %49 = load %struct.valuelist*, %struct.valuelist** %48, align 8
  %50 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %51 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %50, i32 0, i32 3
  %52 = load %struct.valuelist*, %struct.valuelist** %51, align 8
  %53 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %52, i32 0, i32 4
  store %struct.valuelist* %49, %struct.valuelist** %53, align 8
  br label %54

54:                                               ; preds = %46, %34
  %55 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %56 = load %struct.valuelist**, %struct.valuelist*** %6, align 8
  %57 = load %struct.valuelist*, %struct.valuelist** %56, align 8
  %58 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %57, i32 0, i32 4
  store %struct.valuelist* %55, %struct.valuelist** %58, align 8
  %59 = load %struct.valuelist**, %struct.valuelist*** %6, align 8
  %60 = load %struct.valuelist*, %struct.valuelist** %59, align 8
  %61 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %62 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %61, i32 0, i32 3
  store %struct.valuelist* %60, %struct.valuelist** %62, align 8
  %63 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %64 = load %struct.valuelist**, %struct.valuelist*** %6, align 8
  store %struct.valuelist* %63, %struct.valuelist** %64, align 8
  br label %65

65:                                               ; preds = %54, %29
  %66 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %67 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* getelementptr inbounds (%struct.servent, %struct.servent* @cgetservbyport.serv, i32 0, i32 2), align 4
  %69 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %70 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @htons(i64 %71)
  store i32 %72, i32* getelementptr inbounds (%struct.servent, %struct.servent* @cgetservbyport.serv, i32 0, i32 1), align 4
  %73 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %74 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* getelementptr inbounds (%struct.servent, %struct.servent* @cgetservbyport.serv, i32 0, i32 0), align 4
  store %struct.servent* @cgetservbyport.serv, %struct.servent** %3, align 8
  br label %82

76:                                               ; preds = %22
  br label %77

77:                                               ; preds = %76, %21
  %78 = load %struct.valuelist*, %struct.valuelist** %7, align 8
  %79 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %78, i32 0, i32 3
  %80 = load %struct.valuelist*, %struct.valuelist** %79, align 8
  store %struct.valuelist* %80, %struct.valuelist** %7, align 8
  br label %12

81:                                               ; preds = %12
  store %struct.servent* null, %struct.servent** %3, align 8
  br label %82

82:                                               ; preds = %81, %65
  %83 = load %struct.servent*, %struct.servent** %3, align 8
  ret %struct.servent* %83
}

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
