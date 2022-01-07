; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_write_it.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_write_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i8**, i32 }

@MAX_ENTRY_SIZE = common dso_local global i32 0, align 4
@STRCOUNT = common dso_local global i32 0, align 4
@L_BRACE = common dso_local global i8 0, align 1
@R_BRACE = common dso_local global i8 0, align 1
@S_QUOTE = common dso_local global i8* null, align 8
@_nc_curr_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @write_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_it(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %12 = load i32, i32* @MAX_ENTRY_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %127, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @STRCOUNT, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %130

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @VALID_STRING(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %126

32:                                               ; preds = %20
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* @L_BRACE, align 1
  %35 = call i64 @strchr(i8* %33, i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %126

37:                                               ; preds = %32
  store i8* %15, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %112, %37
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %113

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  store i8 %55, i8* %56, align 1
  br label %112

58:                                               ; preds = %45
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %111

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @L_BRACE, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %61
  store i8* null, i8** %10, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i64 @strtol(i8* %70, i8** %10, i32 0)
  store i64 %71, i64* %11, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %110

74:                                               ; preds = %68
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @R_BRACE, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %74
  %82 = load i64, i64* %11, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, 92
  br i1 %86, label %87, label %110

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = icmp slt i64 %88, 127
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i64, i64* %11, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i64 @isprint(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load i8*, i8** @S_QUOTE, align 8
  %97 = ptrtoint i8* %96 to i8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  store i8 %97, i8* %98, align 1
  %100 = load i64, i64* %11, align 8
  %101 = trunc i64 %100 to i8
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i8*, i8** @S_QUOTE, align 8
  %105 = ptrtoint i8* %104 to i8
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %6, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %7, align 8
  br label %110

110:                                              ; preds = %95, %90, %87, %84, %81, %74, %68
  br label %111

111:                                              ; preds = %110, %61, %58
  br label %112

112:                                              ; preds = %111, %52
  br label %39

113:                                              ; preds = %39
  %114 = load i8*, i8** %6, align 8
  store i8 0, i8* %114, align 1
  %115 = call i64 @strlen(i8* %15)
  %116 = load i8*, i8** %5, align 8
  %117 = call i64 @strlen(i8* %116)
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i64 @strlen(i8* %121)
  %123 = add nsw i64 %122, 1
  %124 = call i32 @_nc_STRCPY(i8* %120, i8* %15, i64 %123)
  br label %125

125:                                              ; preds = %119, %113
  br label %126

126:                                              ; preds = %125, %32, %20
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %16

130:                                              ; preds = %16
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @_nc_first_name(i32 %134)
  %136 = call i32 @_nc_set_type(i32 %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* @_nc_curr_line, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @_nc_write_entry(%struct.TYPE_5__* %142)
  %144 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %144)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @VALID_STRING(i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i64 @isprint(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @_nc_STRCPY(i8*, i8*, i64) #2

declare dso_local i32 @_nc_set_type(i32) #2

declare dso_local i32 @_nc_first_name(i32) #2

declare dso_local i32 @_nc_write_entry(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
