; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_open_source_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_open_source_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@source_path = common dso_local global i8* null, align 8
@OPEN_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"$cdir\00", align 1
@DIRNAME_SEPARATOR = common dso_local global i8 0, align 1
@cdir_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_source_file(%struct.symtab* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.symtab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.symtab* %0, %struct.symtab** %3, align 8
  %9 = load i8*, i8** @source_path, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %struct.symtab*, %struct.symtab** %3, align 8
  %11 = getelementptr inbounds %struct.symtab, %struct.symtab* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load %struct.symtab*, %struct.symtab** %3, align 8
  %16 = getelementptr inbounds %struct.symtab, %struct.symtab* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @OPEN_MODE, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %165

24:                                               ; preds = %14
  %25 = load %struct.symtab*, %struct.symtab** %3, align 8
  %26 = getelementptr inbounds %struct.symtab, %struct.symtab* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.symtab*, %struct.symtab** %3, align 8
  %31 = getelementptr inbounds %struct.symtab, %struct.symtab* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @xmfree(i32 %29, i8* %32)
  %34 = load %struct.symtab*, %struct.symtab** %3, align 8
  %35 = getelementptr inbounds %struct.symtab, %struct.symtab* %34, i32 0, i32 0
  store i8* null, i8** %35, align 8
  br label %36

36:                                               ; preds = %24, %1
  %37 = load %struct.symtab*, %struct.symtab** %3, align 8
  %38 = getelementptr inbounds %struct.symtab, %struct.symtab* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %114

41:                                               ; preds = %36
  %42 = load i8*, i8** @source_path, align 8
  %43 = call i64 @strstr(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %113

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @DIRNAME_SEPARATOR, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %51, %47
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @DIRNAME_SEPARATOR, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 5
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %67, %59
  %74 = load i8*, i8** @source_path, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = add nsw i64 %75, 1
  %77 = load %struct.symtab*, %struct.symtab** %3, align 8
  %78 = getelementptr inbounds %struct.symtab, %struct.symtab* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = add nsw i64 %76, %80
  %82 = add nsw i64 %81, 1
  %83 = call i64 @alloca(i64 %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** @source_path, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = load i8*, i8** @source_path, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @strncpy(i8* %91, i8* %92, i32 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load %struct.symtab*, %struct.symtab** %3, align 8
  %100 = getelementptr inbounds %struct.symtab, %struct.symtab* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcpy(i8* %98, i8* %101)
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8*, i8** @source_path, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = getelementptr inbounds i8, i8* %110, i64 5
  %112 = call i32 @strcat(i8* %106, i8* %111)
  br label %113

113:                                              ; preds = %73, %67, %51, %41
  br label %114

114:                                              ; preds = %113, %36
  %115 = load i8*, i8** %4, align 8
  %116 = load %struct.symtab*, %struct.symtab** %3, align 8
  %117 = getelementptr inbounds %struct.symtab, %struct.symtab* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @OPEN_MODE, align 4
  %120 = load %struct.symtab*, %struct.symtab** %3, align 8
  %121 = getelementptr inbounds %struct.symtab, %struct.symtab* %120, i32 0, i32 0
  %122 = call i32 @openp(i8* %115, i32 0, i8* %118, i32 %119, i32 0, i8** %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %114
  %126 = load %struct.symtab*, %struct.symtab** %3, align 8
  %127 = getelementptr inbounds %struct.symtab, %struct.symtab* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @lbasename(i8* %128)
  store i8* %129, i8** %5, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.symtab*, %struct.symtab** %3, align 8
  %132 = getelementptr inbounds %struct.symtab, %struct.symtab* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %130, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %125
  %136 = load i8*, i8** %4, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* @OPEN_MODE, align 4
  %139 = load %struct.symtab*, %struct.symtab** %3, align 8
  %140 = getelementptr inbounds %struct.symtab, %struct.symtab* %139, i32 0, i32 0
  %141 = call i32 @openp(i8* %136, i32 0, i8* %137, i32 %138, i32 0, i8** %140)
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %135, %125
  br label %143

143:                                              ; preds = %142, %114
  %144 = load i32, i32* %6, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load %struct.symtab*, %struct.symtab** %3, align 8
  %148 = getelementptr inbounds %struct.symtab, %struct.symtab* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %7, align 8
  %150 = load %struct.symtab*, %struct.symtab** %3, align 8
  %151 = getelementptr inbounds %struct.symtab, %struct.symtab* %150, i32 0, i32 3
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.symtab*, %struct.symtab** %3, align 8
  %156 = getelementptr inbounds %struct.symtab, %struct.symtab* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @mstrsave(i32 %154, i8* %157)
  %159 = load %struct.symtab*, %struct.symtab** %3, align 8
  %160 = getelementptr inbounds %struct.symtab, %struct.symtab* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @xfree(i8* %161)
  br label %163

163:                                              ; preds = %146, %143
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %22
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @xmfree(i32, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @openp(i8*, i32, i8*, i32, i32, i8**) #1

declare dso_local i8* @lbasename(i8*) #1

declare dso_local i8* @mstrsave(i32, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
