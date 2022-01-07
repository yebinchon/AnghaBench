; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_add_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_add_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { %struct.eap_teap_pac*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EAP_TEAP_PAC_KEY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_teap_add_pac(%struct.eap_teap_pac** %0, %struct.eap_teap_pac** %1, %struct.eap_teap_pac* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_teap_pac**, align 8
  %6 = alloca %struct.eap_teap_pac**, align 8
  %7 = alloca %struct.eap_teap_pac*, align 8
  %8 = alloca %struct.eap_teap_pac*, align 8
  store %struct.eap_teap_pac** %0, %struct.eap_teap_pac*** %5, align 8
  store %struct.eap_teap_pac** %1, %struct.eap_teap_pac*** %6, align 8
  store %struct.eap_teap_pac* %2, %struct.eap_teap_pac** %7, align 8
  %9 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %10 = icmp ne %struct.eap_teap_pac* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %13 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %122

17:                                               ; preds = %11
  %18 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %5, align 8
  %19 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %6, align 8
  %20 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %21 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %24 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %27 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @eap_teap_remove_pac(%struct.eap_teap_pac** %18, %struct.eap_teap_pac** %19, i32 %22, i32 %25, i32 %28)
  %30 = call %struct.eap_teap_pac* @os_zalloc(i32 56)
  store %struct.eap_teap_pac* %30, %struct.eap_teap_pac** %8, align 8
  %31 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %32 = icmp ne %struct.eap_teap_pac* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %122

34:                                               ; preds = %17
  %35 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %36 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %39 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %38, i32 0, i32 12
  store i32 %37, i32* %39, align 4
  %40 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %41 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %44 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %47 = call i32 @os_memcpy(i32 %42, i32 %45, i32 %46)
  %48 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %49 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %48, i32 0, i32 10
  %50 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %51 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %50, i32 0, i32 9
  %52 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %53 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %56 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @eap_teap_copy_buf(i32* %49, i32* %51, i32 %54, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %112, label %60

60:                                               ; preds = %34
  %61 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %62 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %61, i32 0, i32 8
  %63 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %64 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %63, i32 0, i32 7
  %65 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %66 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %69 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @eap_teap_copy_buf(i32* %62, i32* %64, i32 %67, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %112, label %73

73:                                               ; preds = %60
  %74 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %75 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %74, i32 0, i32 6
  %76 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %77 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %76, i32 0, i32 5
  %78 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %79 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %82 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @eap_teap_copy_buf(i32* %75, i32* %77, i32 %80, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %112, label %86

86:                                               ; preds = %73
  %87 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %88 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %87, i32 0, i32 4
  %89 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %90 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %89, i32 0, i32 3
  %91 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %92 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %95 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @eap_teap_copy_buf(i32* %88, i32* %90, i32 %93, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %86
  %100 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %101 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %100, i32 0, i32 2
  %102 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %103 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %102, i32 0, i32 1
  %104 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %105 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %108 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @eap_teap_copy_buf(i32* %101, i32* %103, i32 %106, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %99, %86, %73, %60, %34
  %113 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %114 = call i32 @eap_teap_free_pac(%struct.eap_teap_pac* %113)
  store i32 -1, i32* %4, align 4
  br label %122

115:                                              ; preds = %99
  %116 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %5, align 8
  %117 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %116, align 8
  %118 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %119 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %118, i32 0, i32 0
  store %struct.eap_teap_pac* %117, %struct.eap_teap_pac** %119, align 8
  %120 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %121 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %5, align 8
  store %struct.eap_teap_pac* %120, %struct.eap_teap_pac** %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %115, %112, %33, %16
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @eap_teap_remove_pac(%struct.eap_teap_pac**, %struct.eap_teap_pac**, i32, i32, i32) #1

declare dso_local %struct.eap_teap_pac* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i64 @eap_teap_copy_buf(i32*, i32*, i32, i32) #1

declare dso_local i32 @eap_teap_free_pac(%struct.eap_teap_pac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
