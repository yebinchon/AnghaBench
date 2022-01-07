; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_load_section_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_load_section_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.load_section_data = type { i64, i32, i32, i32 }
%struct.cleanup = type { i32 }

@SEC_LOAD = common dso_local global i32 0, align 4
@download_write_size = common dso_local global i64 0, align 8
@xfree = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Loading section %s, size 0x%s lma 0x%s\0A\00", align 1
@validate_download = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Download verify read failed at 0x%s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Download verify compare failed at 0x%s\00", align 1
@quit_flag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Canceled the download\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Memory access error while loading section %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @load_section_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_section_callback(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.load_section_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cleanup*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.cleanup*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.load_section_data*
  store %struct.load_section_data* %21, %struct.load_section_data** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @bfd_get_section_flags(i32* %22, i32* %23)
  %25 = load i32, i32* @SEC_LOAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %177

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @bfd_get_section_size(i32* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %176

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @bfd_section_lma(i32* %34, i32* %35)
  %37 = load %struct.load_section_data*, %struct.load_section_data** %7, align 8
  %38 = getelementptr inbounds %struct.load_section_data, %struct.load_section_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @bfd_get_section_name(i32* %41, i32* %42)
  store i8* %43, i8** %14, align 8
  %44 = load i64, i64* @download_write_size, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @download_write_size, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @download_write_size, align 8
  store i64 %51, i64* %12, align 8
  br label %54

52:                                               ; preds = %46, %33
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i8* @xmalloc(i32 %56)
  store i8* %57, i8** %9, align 8
  %58 = load i32, i32* @xfree, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call %struct.cleanup* @make_cleanup(i32 %58, i8* %59)
  store %struct.cleanup* %60, %struct.cleanup** %10, align 8
  %61 = load i32, i32* @uiout, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @paddr_nz(i64 %63)
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @paddr_nz(i64 %65)
  %67 = call i32 @ui_out_message(i32 %61, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %64, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @bfd_get_section_contents(i32* %68, i32* %69, i8* %70, i32 0, i64 %71)
  store i64 0, i64* %15, align 8
  br label %73

73:                                               ; preds = %163, %54
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %15, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %17, align 8
  br label %82

82:                                               ; preds = %80, %73
  %83 = load i64, i64* %11, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %17, align 8
  %86 = call i32 @target_write_memory_partial(i64 %83, i8* %84, i64 %85, i32* %13)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %167

90:                                               ; preds = %82
  %91 = load i64, i64* @validate_download, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = call i8* @xmalloc(i32 %94)
  store i8* %95, i8** %18, align 8
  %96 = load i32, i32* @xfree, align 4
  %97 = load i8*, i8** %18, align 8
  %98 = call %struct.cleanup* @make_cleanup(i32 %96, i8* %97)
  store %struct.cleanup* %98, %struct.cleanup** %19, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i8*, i8** %18, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i64 @target_read_memory(i64 %99, i8* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i64, i64* %11, align 8
  %106 = call i8* @paddr(i64 %105)
  %107 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %104, %93
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i64 @memcmp(i8* %109, i8* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i64, i64* %11, align 8
  %116 = call i8* @paddr(i64 %115)
  %117 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %114, %108
  %119 = load %struct.cleanup*, %struct.cleanup** %19, align 8
  %120 = call i32 @do_cleanups(%struct.cleanup* %119)
  br label %121

121:                                              ; preds = %118, %90
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.load_section_data*, %struct.load_section_data** %7, align 8
  %124 = getelementptr inbounds %struct.load_section_data, %struct.load_section_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %11, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %11, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i8*, i8** %9, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %9, align 8
  %135 = load %struct.load_section_data*, %struct.load_section_data** %7, align 8
  %136 = getelementptr inbounds %struct.load_section_data, %struct.load_section_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %15, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %15, align 8
  %143 = load i64, i64* @quit_flag, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %121
  %146 = load i8*, i8** %14, align 8
  %147 = load i64, i64* %15, align 8
  %148 = call i64 @ui_load_progress_hook(i8* %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145, %121
  %151 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %145
  %153 = load i8*, i8** %14, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load %struct.load_section_data*, %struct.load_section_data** %7, align 8
  %157 = getelementptr inbounds %struct.load_section_data, %struct.load_section_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.load_section_data*, %struct.load_section_data** %7, align 8
  %160 = getelementptr inbounds %struct.load_section_data, %struct.load_section_data* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @show_load_progress(i8* %153, i64 %154, i64 %155, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %152
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %8, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %73, label %167

167:                                              ; preds = %163, %89
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.cleanup*, %struct.cleanup** %10, align 8
  %175 = call i32 @do_cleanups(%struct.cleanup* %174)
  br label %176

176:                                              ; preds = %173, %28
  br label %177

177:                                              ; preds = %176, %3
  ret void
}

declare dso_local i32 @bfd_get_section_flags(i32*, i32*) #1

declare dso_local i64 @bfd_get_section_size(i32*) #1

declare dso_local i64 @bfd_section_lma(i32*, i32*) #1

declare dso_local i8* @bfd_get_section_name(i32*, i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @ui_out_message(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @paddr_nz(i64) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32*, i8*, i32, i64) #1

declare dso_local i32 @target_write_memory_partial(i64, i8*, i64, i32*) #1

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @paddr(i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @ui_load_progress_hook(i8*, i64) #1

declare dso_local i32 @show_load_progress(i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
