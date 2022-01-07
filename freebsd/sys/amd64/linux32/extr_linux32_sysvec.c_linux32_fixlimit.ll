; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux32_fixlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux32_fixlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i8*, i8* }

@linux32_maxdsiz = common dso_local global i8* null, align 8
@linux32_maxssiz = common dso_local global i8* null, align 8
@linux32_maxvmem = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rlimit*, i32)* @linux32_fixlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux32_fixlimit(%struct.rlimit* %0, i32 %1) #0 {
  %3 = alloca %struct.rlimit*, align 8
  %4 = alloca i32, align 4
  store %struct.rlimit* %0, %struct.rlimit** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %81 [
    i32 130, label %6
    i32 129, label %31
    i32 128, label %56
  ]

6:                                                ; preds = %2
  %7 = load i8*, i8** @linux32_maxdsiz, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** @linux32_maxdsiz, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i8*, i8** @linux32_maxdsiz, align 8
  %17 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %15, %9
  %20 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** @linux32_maxdsiz, align 8
  %24 = icmp ugt i8* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** @linux32_maxdsiz, align 8
  %27 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %28 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %6
  br label %81

31:                                               ; preds = %2
  %32 = load i8*, i8** @linux32_maxssiz, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %36 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** @linux32_maxssiz, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i8*, i8** @linux32_maxssiz, align 8
  %42 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %43 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %46 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** @linux32_maxssiz, align 8
  %49 = icmp ugt i8* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i8*, i8** @linux32_maxssiz, align 8
  %52 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %53 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %31
  br label %81

56:                                               ; preds = %2
  %57 = load i8*, i8** @linux32_maxvmem, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %61 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** @linux32_maxvmem, align 8
  %64 = icmp ugt i8* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i8*, i8** @linux32_maxvmem, align 8
  %67 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %68 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %71 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** @linux32_maxvmem, align 8
  %74 = icmp ugt i8* %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i8*, i8** @linux32_maxvmem, align 8
  %77 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %78 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %56
  br label %81

81:                                               ; preds = %2, %80, %55, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
