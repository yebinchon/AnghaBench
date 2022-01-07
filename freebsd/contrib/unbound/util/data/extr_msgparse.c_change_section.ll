; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_change_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_change_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, %struct.rrset_parse*, %struct.rrset_parse*, i32 }
%struct.rrset_parse = type { i32, %struct.rrset_parse* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg_parse*, %struct.rrset_parse*, i32)* @change_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_section(%struct.msg_parse* %0, %struct.rrset_parse* %1, i32 %2) #0 {
  %4 = alloca %struct.msg_parse*, align 8
  %5 = alloca %struct.rrset_parse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rrset_parse*, align 8
  %8 = alloca %struct.rrset_parse*, align 8
  store %struct.msg_parse* %0, %struct.msg_parse** %4, align 8
  store %struct.rrset_parse* %1, %struct.rrset_parse** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %11 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %116

15:                                               ; preds = %3
  %16 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %17 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %16, i32 0, i32 3
  %18 = load %struct.rrset_parse*, %struct.rrset_parse** %17, align 8
  store %struct.rrset_parse* %18, %struct.rrset_parse** %7, align 8
  store %struct.rrset_parse* null, %struct.rrset_parse** %8, align 8
  br label %19

19:                                               ; preds = %52, %15
  %20 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %21 = icmp ne %struct.rrset_parse* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %24 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %25 = icmp eq %struct.rrset_parse* %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %28 = icmp ne %struct.rrset_parse* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %31 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %30, i32 0, i32 1
  %32 = load %struct.rrset_parse*, %struct.rrset_parse** %31, align 8
  %33 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %34 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %33, i32 0, i32 1
  store %struct.rrset_parse* %32, %struct.rrset_parse** %34, align 8
  br label %41

35:                                               ; preds = %26
  %36 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %37 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %36, i32 0, i32 1
  %38 = load %struct.rrset_parse*, %struct.rrset_parse** %37, align 8
  %39 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %40 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %39, i32 0, i32 3
  store %struct.rrset_parse* %38, %struct.rrset_parse** %40, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %43 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %42, i32 0, i32 2
  %44 = load %struct.rrset_parse*, %struct.rrset_parse** %43, align 8
  %45 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %46 = icmp eq %struct.rrset_parse* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %49 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %50 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %49, i32 0, i32 2
  store %struct.rrset_parse* %48, %struct.rrset_parse** %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  br label %57

52:                                               ; preds = %22
  %53 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  store %struct.rrset_parse* %53, %struct.rrset_parse** %8, align 8
  %54 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %55 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %54, i32 0, i32 1
  %56 = load %struct.rrset_parse*, %struct.rrset_parse** %55, align 8
  store %struct.rrset_parse* %56, %struct.rrset_parse** %7, align 8
  br label %19

57:                                               ; preds = %51, %19
  %58 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %59 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %76 [
    i32 129, label %61
    i32 128, label %66
    i32 130, label %71
  ]

61:                                               ; preds = %57
  %62 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %63 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  br label %78

66:                                               ; preds = %57
  %67 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %68 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  br label %78

71:                                               ; preds = %57
  %72 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %73 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  br label %78

76:                                               ; preds = %57
  %77 = call i32 @log_assert(i32 0)
  br label %78

78:                                               ; preds = %76, %71, %66, %61
  %79 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %80 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %79, i32 0, i32 1
  store %struct.rrset_parse* null, %struct.rrset_parse** %80, align 8
  %81 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %82 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %81, i32 0, i32 2
  %83 = load %struct.rrset_parse*, %struct.rrset_parse** %82, align 8
  %84 = icmp ne %struct.rrset_parse* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %87 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %88 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %87, i32 0, i32 2
  %89 = load %struct.rrset_parse*, %struct.rrset_parse** %88, align 8
  %90 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %89, i32 0, i32 1
  store %struct.rrset_parse* %86, %struct.rrset_parse** %90, align 8
  br label %95

91:                                               ; preds = %78
  %92 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %93 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %94 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %93, i32 0, i32 3
  store %struct.rrset_parse* %92, %struct.rrset_parse** %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %97 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %98 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %97, i32 0, i32 2
  store %struct.rrset_parse* %96, %struct.rrset_parse** %98, align 8
  %99 = load i32, i32* %6, align 4
  switch i32 %99, label %110 [
    i32 128, label %100
    i32 130, label %105
  ]

100:                                              ; preds = %95
  %101 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %102 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %112

105:                                              ; preds = %95
  %106 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %107 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %112

110:                                              ; preds = %95
  %111 = call i32 @log_assert(i32 0)
  br label %112

112:                                              ; preds = %110, %105, %100
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %115 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %14
  ret void
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
