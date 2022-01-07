; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_cx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_cx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicx = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@uni_print_cx.acttab = internal global [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"clr\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ign\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"x03\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"x04\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mig\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mrp\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"x07\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@uni_print_cx.errtab = internal global [133 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"unk\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mis\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"acc\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"q2932\09\09%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"pnni\09\09%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"git_hard\09%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"bearer_hard\09%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"cause_hard\09%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"multiline\09%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"tabsiz\09\09%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"errcnt\09\09%d (\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"%02x[%s,%s%s]\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c",M\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_print_cx(i8* %0, i64 %1, %struct.unicx* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.unicx*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.unicx* %2, %struct.unicx** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.unicx*, %struct.unicx** %6, align 8
  %11 = call i32 @uni_print_init(i8* %8, i64 %9, %struct.unicx* %10)
  %12 = load %struct.unicx*, %struct.unicx** %6, align 8
  %13 = load %struct.unicx*, %struct.unicx** %6, align 8
  %14 = getelementptr inbounds %struct.unicx, %struct.unicx* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %15)
  %17 = load %struct.unicx*, %struct.unicx** %6, align 8
  %18 = load %struct.unicx*, %struct.unicx** %6, align 8
  %19 = getelementptr inbounds %struct.unicx, %struct.unicx* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %20)
  %22 = load %struct.unicx*, %struct.unicx** %6, align 8
  %23 = load %struct.unicx*, %struct.unicx** %6, align 8
  %24 = getelementptr inbounds %struct.unicx, %struct.unicx* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %25)
  %27 = load %struct.unicx*, %struct.unicx** %6, align 8
  %28 = load %struct.unicx*, %struct.unicx** %6, align 8
  %29 = getelementptr inbounds %struct.unicx, %struct.unicx* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %30)
  %32 = load %struct.unicx*, %struct.unicx** %6, align 8
  %33 = load %struct.unicx*, %struct.unicx** %6, align 8
  %34 = getelementptr inbounds %struct.unicx, %struct.unicx* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %35)
  %37 = load %struct.unicx*, %struct.unicx** %6, align 8
  %38 = load %struct.unicx*, %struct.unicx** %6, align 8
  %39 = getelementptr inbounds %struct.unicx, %struct.unicx* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %40)
  %42 = load %struct.unicx*, %struct.unicx** %6, align 8
  %43 = load %struct.unicx*, %struct.unicx** %6, align 8
  %44 = getelementptr inbounds %struct.unicx, %struct.unicx* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %45)
  %47 = load %struct.unicx*, %struct.unicx** %6, align 8
  %48 = load %struct.unicx*, %struct.unicx** %6, align 8
  %49 = getelementptr inbounds %struct.unicx, %struct.unicx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i64 %50)
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %106, %3
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.unicx*, %struct.unicx** %6, align 8
  %55 = getelementptr inbounds %struct.unicx, %struct.unicx* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %52
  %59 = load %struct.unicx*, %struct.unicx** %6, align 8
  %60 = load %struct.unicx*, %struct.unicx** %6, align 8
  %61 = getelementptr inbounds %struct.unicx, %struct.unicx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.unicx*, %struct.unicx** %6, align 8
  %68 = getelementptr inbounds %struct.unicx, %struct.unicx* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [133 x i8*], [133 x i8*]* @uni_print_cx.errtab, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.unicx*, %struct.unicx** %6, align 8
  %77 = getelementptr inbounds %struct.unicx, %struct.unicx* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [9 x i8*], [9 x i8*]* @uni_print_cx.acttab, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.unicx*, %struct.unicx** %6, align 8
  %86 = getelementptr inbounds %struct.unicx, %struct.unicx* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)
  %95 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %66, i8* %75, i8* %84, i8* %94)
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.unicx*, %struct.unicx** %6, align 8
  %98 = getelementptr inbounds %struct.unicx, %struct.unicx* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %99, 1
  %101 = icmp ne i64 %96, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %58
  %103 = load %struct.unicx*, %struct.unicx** %6, align 8
  %104 = call i32 @uni_putc(i8 signext 32, %struct.unicx* %103)
  br label %105

105:                                              ; preds = %102, %58
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %52

109:                                              ; preds = %52
  %110 = load %struct.unicx*, %struct.unicx** %6, align 8
  %111 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

declare dso_local i32 @uni_print_init(i8*, i64, %struct.unicx*) #1

declare dso_local i32 @uni_printf(%struct.unicx*, i8*, ...) #1

declare dso_local i32 @uni_putc(i8 signext, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
