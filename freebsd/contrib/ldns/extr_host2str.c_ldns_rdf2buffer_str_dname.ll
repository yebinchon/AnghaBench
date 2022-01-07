; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_dname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8
@LDNS_STATUS_DOMAINNAME_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\%03u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_str_dname(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @ldns_rdf_data(i32* %11)
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %8, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @ldns_rdf_size(i32* %18)
  %20 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @LDNS_STATUS_DOMAINNAME_OVERFLOW, align 4
  store i32 %23, i32* %3, align 4
  br label %127

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @ldns_rdf_size(i32* %25)
  %27 = icmp eq i64 1, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %124

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %118, %31
  %33 = load i64, i64* %7, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @ldns_rdf_size(i32* %37)
  %39 = icmp ult i64 %36, %38
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %123

42:                                               ; preds = %40
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %107, %42
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %45
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i8
  store i8 %54, i8* %10, align 1
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %74, label %58

58:                                               ; preds = %49
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 59
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 40
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 41
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8, i8* %10, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 92
  br i1 %73, label %74, label %81

74:                                               ; preds = %70, %66, %62, %58, %49
  %75 = load i32*, i32** %4, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %104

81:                                               ; preds = %70
  %82 = load i8, i8* %10, align 1
  %83 = call i64 @isascii(i8 zeroext %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i8, i8* %10, align 1
  %87 = call i64 @isgraph(i8 zeroext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %85, %81
  %90 = load i32*, i32** %4, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  br label %103

96:                                               ; preds = %85
  %97 = load i32*, i32** %4, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %96, %89
  br label %104

104:                                              ; preds = %103, %74
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  br label %45

110:                                              ; preds = %45
  %111 = load i64, i64* %6, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = call i64 @ldns_rdf_size(i32* %112)
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i64*, i64** %8, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %7, align 8
  br label %32

123:                                              ; preds = %40
  br label %124

124:                                              ; preds = %123, %28
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @ldns_buffer_status(i32* %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %22
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @ldns_rdf_data(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isgraph(i8 zeroext) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
