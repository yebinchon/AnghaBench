; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/tests/extr_dns_test.c_hostent_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/tests/extr_dns_test.c_hostent_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostent*, %struct.hostent*)* @hostent_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostent_compare(%struct.hostent* %0, %struct.hostent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca %struct.hostent*, align 8
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store %struct.hostent* %1, %struct.hostent** %5, align 8
  %6 = load %struct.hostent*, %struct.hostent** %4, align 8
  %7 = icmp eq %struct.hostent* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.hostent*, %struct.hostent** %5, align 8
  %10 = icmp ne %struct.hostent* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %116

12:                                               ; preds = %8, %2
  %13 = load %struct.hostent*, %struct.hostent** %4, align 8
  %14 = icmp eq %struct.hostent* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.hostent*, %struct.hostent** %5, align 8
  %17 = icmp eq %struct.hostent* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %116

19:                                               ; preds = %15
  %20 = load %struct.hostent*, %struct.hostent** %4, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.hostent*, %struct.hostent** %5, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %24, %19
  %30 = load %struct.hostent*, %struct.hostent** %4, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.hostent*, %struct.hostent** %5, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  store i32 0, i32* %3, align 4
  br label %116

40:                                               ; preds = %34
  %41 = load %struct.hostent*, %struct.hostent** %4, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.hostent*, %struct.hostent** %5, align 8
  %45 = getelementptr inbounds %struct.hostent, %struct.hostent* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @strcmp(i32* %43, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %116

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.hostent*, %struct.hostent** %4, align 8
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hostent*, %struct.hostent** %5, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hostent_aliases_compare(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %116

61:                                               ; preds = %51
  %62 = load %struct.hostent*, %struct.hostent** %5, align 8
  %63 = getelementptr inbounds %struct.hostent, %struct.hostent* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hostent*, %struct.hostent** %4, align 8
  %66 = getelementptr inbounds %struct.hostent, %struct.hostent* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hostent_aliases_compare(i32 %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %116

71:                                               ; preds = %61
  %72 = load %struct.hostent*, %struct.hostent** %4, align 8
  %73 = getelementptr inbounds %struct.hostent, %struct.hostent* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hostent*, %struct.hostent** %5, align 8
  %76 = getelementptr inbounds %struct.hostent, %struct.hostent* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %116

80:                                               ; preds = %71
  %81 = load %struct.hostent*, %struct.hostent** %4, align 8
  %82 = getelementptr inbounds %struct.hostent, %struct.hostent* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.hostent*, %struct.hostent** %5, align 8
  %85 = getelementptr inbounds %struct.hostent, %struct.hostent* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %116

89:                                               ; preds = %80
  %90 = load %struct.hostent*, %struct.hostent** %4, align 8
  %91 = getelementptr inbounds %struct.hostent, %struct.hostent* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.hostent*, %struct.hostent** %5, align 8
  %94 = getelementptr inbounds %struct.hostent, %struct.hostent* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.hostent*, %struct.hostent** %4, align 8
  %97 = getelementptr inbounds %struct.hostent, %struct.hostent* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @hostent_addr_list_compare(i32 %92, i32 %95, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %116

102:                                              ; preds = %89
  %103 = load %struct.hostent*, %struct.hostent** %5, align 8
  %104 = getelementptr inbounds %struct.hostent, %struct.hostent* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hostent*, %struct.hostent** %4, align 8
  %107 = getelementptr inbounds %struct.hostent, %struct.hostent* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.hostent*, %struct.hostent** %4, align 8
  %110 = getelementptr inbounds %struct.hostent, %struct.hostent* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @hostent_addr_list_compare(i32 %105, i32 %108, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %116

115:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %114, %101, %88, %79, %70, %60, %49, %39, %18, %11
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @hostent_aliases_compare(i32, i32) #1

declare dso_local i32 @hostent_addr_list_compare(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
