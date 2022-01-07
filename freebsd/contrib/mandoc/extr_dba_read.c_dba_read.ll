; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_read.c_dba_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_read.c_dba_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dba = type { i32 }
%struct.dba_array = type { i32 }
%struct.dbm_page = type { i8*, i8*, i8*, i8*, i32 }
%struct.dbm_macro = type { i32, i32 }

@DBP_NAME = common dso_local global i32 0, align 4
@DBP_SECT = common dso_local global i32 0, align 4
@DBP_ARCH = common dso_local global i32 0, align 4
@DBP_FILE = common dso_local global i32 0, align 4
@MACRO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dba* @dba_read(i8* %0) #0 {
  %2 = alloca %struct.dba*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dba*, align 8
  %5 = alloca %struct.dba_array*, align 8
  %6 = alloca %struct.dbm_page*, align 8
  %7 = alloca %struct.dbm_macro*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @dbm_open(i8* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.dba* null, %struct.dba** %2, align 8
  br label %160

17:                                               ; preds = %1
  %18 = call i32 (...) @dbm_page_count()
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 128, %21 ], [ %23, %22 ]
  %26 = call %struct.dba* @dba_new(i32 %25)
  store %struct.dba* %26, %struct.dba** %4, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %123, %24
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %126

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.dbm_page* @dbm_page_get(i32 %32)
  store %struct.dbm_page* %33, %struct.dbm_page** %6, align 8
  %34 = load %struct.dba*, %struct.dba** %4, align 8
  %35 = getelementptr inbounds %struct.dba, %struct.dba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %38 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %41 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %44 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %48 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call %struct.dba_array* @dba_page_new(i32 %36, i8* %39, i32 %42, i8* %46, i8 signext %50)
  store %struct.dba_array* %51, %struct.dba_array** %5, align 8
  %52 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %53 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %65, %31
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.dba_array*, %struct.dba_array** %5, align 8
  %62 = load i32, i32* @DBP_NAME, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @dba_page_add(%struct.dba_array* %61, i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 0)
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %8, align 8
  br label %55

69:                                               ; preds = %55
  %70 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %71 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %83, %69
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.dba_array*, %struct.dba_array** %5, align 8
  %80 = load i32, i32* @DBP_SECT, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @dba_page_add(%struct.dba_array* %79, i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 0)
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %8, align 8
  br label %73

87:                                               ; preds = %73
  %88 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %89 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %8, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %100, %92
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 0)
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.dba_array*, %struct.dba_array** %5, align 8
  %102 = load i32, i32* @DBP_ARCH, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @dba_page_add(%struct.dba_array* %101, i32 %102, i8* %103)
  br label %93

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %87
  %107 = load %struct.dbm_page*, %struct.dbm_page** %6, align 8
  %108 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %8, align 8
  br label %110

110:                                              ; preds = %117, %106
  %111 = load i8*, i8** %8, align 8
  %112 = call i8* @strchr(i8* %111, i8 signext 0)
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8* %113, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.dba_array*, %struct.dba_array** %5, align 8
  %119 = load i32, i32* @DBP_FILE, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @dba_page_add(%struct.dba_array* %118, i32 %119, i8* %120)
  br label %110

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %27

126:                                              ; preds = %27
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %154, %126
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @MACRO_MAX, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %150, %131
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @dbm_macro_count(i32 %134)
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call %struct.dbm_macro* @dbm_macro_get(i32 %138, i32 %139)
  store %struct.dbm_macro* %140, %struct.dbm_macro** %7, align 8
  %141 = load %struct.dba*, %struct.dba** %4, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.dbm_macro*, %struct.dbm_macro** %7, align 8
  %144 = getelementptr inbounds %struct.dbm_macro, %struct.dbm_macro* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.dbm_macro*, %struct.dbm_macro** %7, align 8
  %147 = getelementptr inbounds %struct.dbm_macro, %struct.dbm_macro* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dba_macro_new(%struct.dba* %141, i32 %142, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %137
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %132

153:                                              ; preds = %132
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %127

157:                                              ; preds = %127
  %158 = call i32 (...) @dbm_close()
  %159 = load %struct.dba*, %struct.dba** %4, align 8
  store %struct.dba* %159, %struct.dba** %2, align 8
  br label %160

160:                                              ; preds = %157, %16
  %161 = load %struct.dba*, %struct.dba** %2, align 8
  ret %struct.dba* %161
}

declare dso_local i32 @dbm_open(i8*) #1

declare dso_local i32 @dbm_page_count(...) #1

declare dso_local %struct.dba* @dba_new(i32) #1

declare dso_local %struct.dbm_page* @dbm_page_get(i32) #1

declare dso_local %struct.dba_array* @dba_page_new(i32, i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @dba_page_add(%struct.dba_array*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dbm_macro_count(i32) #1

declare dso_local %struct.dbm_macro* @dbm_macro_get(i32, i32) #1

declare dso_local i32 @dba_macro_new(%struct.dba*, i32, i32, i32) #1

declare dso_local i32 @dbm_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
