; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_reorder.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i32 }
%struct.ai_order = type { i32, %struct.addrinfo*, i32, i32 }
%struct.policyhead = type { i32 }

@comp_dst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*)* @reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reorder(%struct.addrinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo**, align 8
  %6 = alloca %struct.ai_order*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.policyhead, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 0
  %12 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %12, %struct.addrinfo** %4, align 8
  br label %13

13:                                               ; preds = %17, %1
  %14 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %15 = icmp ne %struct.addrinfo* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  store %struct.addrinfo* %20, %struct.addrinfo** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %127

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.ai_order* @calloc(i32 %29, i32 24)
  store %struct.ai_order* %30, %struct.ai_order** %6, align 8
  %31 = icmp eq %struct.ai_order* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %127

34:                                               ; preds = %28
  %35 = call i32 @TAILQ_INIT(%struct.policyhead* %9)
  %36 = call i32 @get_addrselectpolicy(%struct.policyhead* %9)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %40 = call i32 @free(%struct.ai_order* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %127

42:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  %43 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 0
  %45 = load %struct.addrinfo*, %struct.addrinfo** %44, align 8
  store %struct.addrinfo* %45, %struct.addrinfo** %4, align 8
  br label %46

46:                                               ; preds = %86, %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %52 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %52, i64 %54
  %56 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %55, i32 0, i32 1
  store %struct.addrinfo* %51, %struct.addrinfo** %56, align 8
  %57 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @gai_addr2scopetype(i32 %59)
  %61 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %61, i64 %63
  %65 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %64, i32 0, i32 3
  store i32 %60, i32* %65, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @match_addrselectpolicy(i32 %68, %struct.policyhead* %9)
  %70 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %70, i64 %72
  %74 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %73, i32 0, i32 2
  store i32 %69, i32* %74, align 8
  %75 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %75, i64 %77
  %79 = call i32 @set_source(%struct.ai_order* %78, %struct.policyhead* %9)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %81, i64 %83
  %85 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 8
  br label %86

86:                                               ; preds = %50
  %87 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 0
  %89 = load %struct.addrinfo*, %struct.addrinfo** %88, align 8
  store %struct.addrinfo* %89, %struct.addrinfo** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %46

92:                                               ; preds = %46
  %93 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @comp_dst, align 4
  %96 = call i32 @qsort(%struct.ai_order* %93, i32 %94, i32 24, i32 %95)
  store i32 0, i32* %7, align 4
  %97 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %97, i32 0, i32 0
  store %struct.addrinfo** %98, %struct.addrinfo*** %5, align 8
  br label %99

99:                                               ; preds = %118, %92
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %104, i64 %106
  %108 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %107, i32 0, i32 1
  %109 = load %struct.addrinfo*, %struct.addrinfo** %108, align 8
  %110 = load %struct.addrinfo**, %struct.addrinfo*** %5, align 8
  store %struct.addrinfo* %109, %struct.addrinfo** %110, align 8
  %111 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %111, i64 %113
  %115 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %114, i32 0, i32 1
  %116 = load %struct.addrinfo*, %struct.addrinfo** %115, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 0
  store %struct.addrinfo** %117, %struct.addrinfo*** %5, align 8
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %99

121:                                              ; preds = %99
  %122 = load %struct.addrinfo**, %struct.addrinfo*** %5, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %122, align 8
  %123 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %124 = call i32 @free(%struct.ai_order* %123)
  %125 = call i32 @free_addrselectpolicy(%struct.policyhead* %9)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %38, %32, %26
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.ai_order* @calloc(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.policyhead*) #1

declare dso_local i32 @get_addrselectpolicy(%struct.policyhead*) #1

declare dso_local i32 @free(%struct.ai_order*) #1

declare dso_local i32 @gai_addr2scopetype(i32) #1

declare dso_local i32 @match_addrselectpolicy(i32, %struct.policyhead*) #1

declare dso_local i32 @set_source(%struct.ai_order*, %struct.policyhead*) #1

declare dso_local i32 @qsort(%struct.ai_order*, i32, i32, i32) #1

declare dso_local i32 @free_addrselectpolicy(%struct.policyhead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
