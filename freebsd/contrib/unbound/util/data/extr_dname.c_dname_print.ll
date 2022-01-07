; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sldns_buffer = type { i32 }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"??compressionptr??\00", align 1
@LDNS_MAX_LABELLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"??extendedlabel??\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dname_print(i32* %0, %struct.sldns_buffer* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sldns_buffer*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sldns_buffer* %1, %struct.sldns_buffer** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** @stdout, align 8
  store i32* %11, i32** %4, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %75

16:                                               ; preds = %12
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %6, align 8
  %19 = load i64, i64* %17, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fputc(i8 signext 46, i32* %23)
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %69, %39, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @LABEL_IS_PTR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.sldns_buffer*, %struct.sldns_buffer** %5, align 8
  %35 = icmp ne %struct.sldns_buffer* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %37)
  br label %75

39:                                               ; preds = %33
  %40 = load %struct.sldns_buffer*, %struct.sldns_buffer** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PTR_OFFSET(i64 %41, i64 %43)
  %45 = call i64* @sldns_buffer_at(%struct.sldns_buffer* %40, i32 %44)
  store i64* %45, i64** %6, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %6, align 8
  %48 = load i64, i64* %46, align 8
  store i64 %48, i64* %7, align 8
  br label %26

49:                                               ; preds = %29
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  br label %75

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %7, align 8
  %60 = icmp ne i64 %58, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i64*, i64** %6, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %6, align 8
  %64 = load i64, i64* %62, align 8
  %65 = trunc i64 %64 to i32
  %66 = trunc i32 %65 to i8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @fputc(i8 signext %66, i32* %67)
  br label %57

69:                                               ; preds = %57
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fputc(i8 signext 46, i32* %70)
  %72 = load i64*, i64** %6, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %6, align 8
  %74 = load i64, i64* %72, align 8
  store i64 %74, i64* %7, align 8
  br label %26

75:                                               ; preds = %15, %36, %53, %26
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @LABEL_IS_PTR(i64) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64* @sldns_buffer_at(%struct.sldns_buffer*, i32) #1

declare dso_local i32 @PTR_OFFSET(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
