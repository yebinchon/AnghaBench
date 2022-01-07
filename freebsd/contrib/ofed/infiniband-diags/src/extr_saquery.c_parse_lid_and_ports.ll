; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_parse_lid_and_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_parse_lid_and_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, i8*, i32*, i32*, i32*)* @parse_lid_and_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_lid_and_ports(%struct.sa_handle* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sa_handle*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.sa_handle* %0, %struct.sa_handle** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32*, i32** %10, align 8
  store i32 -1, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %11, align 8
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 47)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** %12, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @get_lid(%struct.sa_handle* %34, i8* %35)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %84

42:                                               ; preds = %38
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 47)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i8*, i8** %12, align 8
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strtoul(i8* %55, i8** %13, i32 0)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32*, i32** %10, align 8
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %54
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %84

68:                                               ; preds = %64
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %8, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strtoul(i8* %74, i8** %13, i32 0)
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32*, i32** %11, align 8
  store i32 -1, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %73
  br label %83

83:                                               ; preds = %82, %68
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %67, %41
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @get_lid(%struct.sa_handle*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
