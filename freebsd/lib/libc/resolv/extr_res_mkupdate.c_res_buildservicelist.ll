; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_buildservicelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_buildservicelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { %struct.valuelist*, %struct.valuelist*, i32, %struct.valuelist*, %struct.valuelist* }
%struct.servent = type { i64, i32, i32 }

@servicelist = common dso_local global %struct.valuelist* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @res_buildservicelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_buildservicelist() #0 {
  %1 = alloca %struct.servent*, align 8
  %2 = alloca %struct.valuelist*, align 8
  %3 = call i32 @setservent(i32 1)
  br label %4

4:                                                ; preds = %79, %0
  %5 = call %struct.servent* (...) @getservent()
  store %struct.servent* %5, %struct.servent** %1, align 8
  %6 = icmp ne %struct.servent* %5, null
  br i1 %6, label %7, label %81

7:                                                ; preds = %4
  %8 = call i64 @malloc(i32 40)
  %9 = inttoptr i64 %8 to %struct.valuelist*
  store %struct.valuelist* %9, %struct.valuelist** %2, align 8
  %10 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %11 = icmp ne %struct.valuelist* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %81

13:                                               ; preds = %7
  %14 = load %struct.servent*, %struct.servent** %1, align 8
  %15 = getelementptr inbounds %struct.servent, %struct.servent* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @strdup(i32 %16)
  %18 = bitcast i8* %17 to %struct.valuelist*
  %19 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %20 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %19, i32 0, i32 4
  store %struct.valuelist* %18, %struct.valuelist** %20, align 8
  %21 = load %struct.servent*, %struct.servent** %1, align 8
  %22 = getelementptr inbounds %struct.servent, %struct.servent* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @strdup(i32 %23)
  %25 = bitcast i8* %24 to %struct.valuelist*
  %26 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %27 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %26, i32 0, i32 3
  store %struct.valuelist* %25, %struct.valuelist** %27, align 8
  %28 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %29 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %28, i32 0, i32 4
  %30 = load %struct.valuelist*, %struct.valuelist** %29, align 8
  %31 = icmp eq %struct.valuelist* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %13
  %33 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %34 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %33, i32 0, i32 3
  %35 = load %struct.valuelist*, %struct.valuelist** %34, align 8
  %36 = icmp eq %struct.valuelist* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %32, %13
  %38 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %39 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %38, i32 0, i32 4
  %40 = load %struct.valuelist*, %struct.valuelist** %39, align 8
  %41 = icmp ne %struct.valuelist* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %44 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %43, i32 0, i32 4
  %45 = load %struct.valuelist*, %struct.valuelist** %44, align 8
  %46 = call i32 @free(%struct.valuelist* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %49 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %48, i32 0, i32 3
  %50 = load %struct.valuelist*, %struct.valuelist** %49, align 8
  %51 = icmp ne %struct.valuelist* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %54 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %53, i32 0, i32 3
  %55 = load %struct.valuelist*, %struct.valuelist** %54, align 8
  %56 = call i32 @free(%struct.valuelist* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %59 = call i32 @free(%struct.valuelist* %58)
  br label %81

60:                                               ; preds = %32
  %61 = load %struct.servent*, %struct.servent** %1, align 8
  %62 = getelementptr inbounds %struct.servent, %struct.servent* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @ntohs(i32 %64)
  %66 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %67 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.valuelist*, %struct.valuelist** @servicelist, align 8
  %69 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %70 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %69, i32 0, i32 1
  store %struct.valuelist* %68, %struct.valuelist** %70, align 8
  %71 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %72 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %71, i32 0, i32 0
  store %struct.valuelist* null, %struct.valuelist** %72, align 8
  %73 = load %struct.valuelist*, %struct.valuelist** @servicelist, align 8
  %74 = icmp ne %struct.valuelist* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %60
  %76 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %77 = load %struct.valuelist*, %struct.valuelist** @servicelist, align 8
  %78 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %77, i32 0, i32 0
  store %struct.valuelist* %76, %struct.valuelist** %78, align 8
  br label %79

79:                                               ; preds = %75, %60
  %80 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  store %struct.valuelist* %80, %struct.valuelist** @servicelist, align 8
  br label %4

81:                                               ; preds = %57, %12, %4
  %82 = call i32 (...) @endservent()
  ret void
}

declare dso_local i32 @setservent(i32) #1

declare dso_local %struct.servent* @getservent(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @free(%struct.valuelist*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @endservent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
