; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_kld_current_sos.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_kld_current_sos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i8*, i8*, %struct.so_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@linker_files_addr = common dso_local global i64 0, align 8
@kernel_file_addr = common dso_local global i64 0, align 8
@off_address = common dso_local global i64 0, align 8
@off_filename = common dso_local global i64 0, align 8
@off_next = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"kld_current_sos: Can't read filename: %s\0A\00", align 1
@off_pathname = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"kld_current_sos: Can't read pathname for \22%s\22: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"kld_current_sos: Invalid address for kld \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.so_list* ()* @kld_current_sos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.so_list* @kld_current_sos() #0 {
  %1 = alloca %struct.so_list*, align 8
  %2 = alloca %struct.so_list*, align 8
  %3 = alloca %struct.so_list**, align 8
  %4 = alloca %struct.so_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i64, i64* @linker_files_addr, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %0
  %12 = load i64, i64* @kernel_file_addr, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @off_address, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @off_filename, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @off_next, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %14, %11, %0
  store %struct.so_list* null, %struct.so_list** %1, align 8
  br label %157

24:                                               ; preds = %20
  store %struct.so_list* null, %struct.so_list** %2, align 8
  store %struct.so_list** %2, %struct.so_list*** %3, align 8
  %25 = load i64, i64* @kernel_file_addr, align 8
  %26 = call i64 @read_pointer(i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* @linker_files_addr, align 8
  %28 = call i64 @read_pointer(i64 %27)
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %150, %24
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %155

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %150

37:                                               ; preds = %32
  %38 = call i8* @xmalloc(i32 32)
  %39 = bitcast i8* %38 to %struct.so_list*
  store %struct.so_list* %39, %struct.so_list** %4, align 8
  %40 = load %struct.so_list*, %struct.so_list** %4, align 8
  %41 = call i32 @memset(%struct.so_list* %40, i32 0, i32 32)
  %42 = call i8* @xmalloc(i32 8)
  %43 = bitcast i8* %42 to %struct.TYPE_2__*
  %44 = load %struct.so_list*, %struct.so_list** %4, align 8
  %45 = getelementptr inbounds %struct.so_list, %struct.so_list* %44, i32 0, i32 3
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.so_list*, %struct.so_list** %4, align 8
  %47 = getelementptr inbounds %struct.so_list, %struct.so_list* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @off_filename, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i64 @read_pointer(i64 %52)
  %54 = call i32 @target_read_string(i64 %53, i8** %7, i32 8, i32* %8)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %37
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @safe_strerror(i32 %58)
  %60 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load %struct.so_list*, %struct.so_list** %4, align 8
  %62 = call i32 @free_so(%struct.so_list* %61)
  br label %150

63:                                               ; preds = %37
  %64 = load %struct.so_list*, %struct.so_list** %4, align 8
  %65 = getelementptr inbounds %struct.so_list, %struct.so_list* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strlcpy(i8* %66, i8* %67, i32 8)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @xfree(i8* %69)
  %71 = load %struct.so_list*, %struct.so_list** %4, align 8
  %72 = getelementptr inbounds %struct.so_list, %struct.so_list* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.so_list*, %struct.so_list** %4, align 8
  %75 = getelementptr inbounds %struct.so_list, %struct.so_list* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @find_kld_path(i8* %73, i8* %76, i32 8)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %123

80:                                               ; preds = %63
  %81 = load i64, i64* @off_pathname, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %80
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @off_pathname, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i64 @read_pointer(i64 %86)
  %88 = call i32 @target_read_string(i64 %87, i8** %7, i32 8, i32* %8)
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load %struct.so_list*, %struct.so_list** %4, align 8
  %93 = getelementptr inbounds %struct.so_list, %struct.so_list* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i8* @safe_strerror(i32 %95)
  %97 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %94, i8* %96)
  %98 = load %struct.so_list*, %struct.so_list** %4, align 8
  %99 = getelementptr inbounds %struct.so_list, %struct.so_list* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.so_list*, %struct.so_list** %4, align 8
  %102 = getelementptr inbounds %struct.so_list, %struct.so_list* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strlcpy(i8* %100, i8* %103, i32 8)
  br label %113

105:                                              ; preds = %83
  %106 = load %struct.so_list*, %struct.so_list** %4, align 8
  %107 = getelementptr inbounds %struct.so_list, %struct.so_list* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strlcpy(i8* %108, i8* %109, i32 8)
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @xfree(i8* %111)
  br label %113

113:                                              ; preds = %105, %91
  br label %122

114:                                              ; preds = %80
  %115 = load %struct.so_list*, %struct.so_list** %4, align 8
  %116 = getelementptr inbounds %struct.so_list, %struct.so_list* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.so_list*, %struct.so_list** %4, align 8
  %119 = getelementptr inbounds %struct.so_list, %struct.so_list* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strlcpy(i8* %117, i8* %120, i32 8)
  br label %122

122:                                              ; preds = %114, %113
  br label %123

123:                                              ; preds = %122, %79
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @off_address, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i64 @read_pointer(i64 %126)
  %128 = load %struct.so_list*, %struct.so_list** %4, align 8
  %129 = getelementptr inbounds %struct.so_list, %struct.so_list* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i64 %127, i64* %131, align 8
  %132 = load %struct.so_list*, %struct.so_list** %4, align 8
  %133 = getelementptr inbounds %struct.so_list, %struct.so_list* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %123
  %139 = load %struct.so_list*, %struct.so_list** %4, align 8
  %140 = getelementptr inbounds %struct.so_list, %struct.so_list* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %141)
  %143 = load %struct.so_list*, %struct.so_list** %4, align 8
  %144 = call i32 @free_so(%struct.so_list* %143)
  br label %150

145:                                              ; preds = %123
  %146 = load %struct.so_list*, %struct.so_list** %4, align 8
  %147 = load %struct.so_list**, %struct.so_list*** %3, align 8
  store %struct.so_list* %146, %struct.so_list** %147, align 8
  %148 = load %struct.so_list*, %struct.so_list** %4, align 8
  %149 = getelementptr inbounds %struct.so_list, %struct.so_list* %148, i32 0, i32 2
  store %struct.so_list** %149, %struct.so_list*** %3, align 8
  br label %150

150:                                              ; preds = %145, %138, %57, %36
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* @off_next, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i64 @read_pointer(i64 %153)
  store i64 %154, i64* %5, align 8
  br label %29

155:                                              ; preds = %29
  %156 = load %struct.so_list*, %struct.so_list** %2, align 8
  store %struct.so_list* %156, %struct.so_list** %1, align 8
  br label %157

157:                                              ; preds = %155, %23
  %158 = load %struct.so_list*, %struct.so_list** %1, align 8
  ret %struct.so_list* %158
}

declare dso_local i64 @read_pointer(i64) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.so_list*, i32, i32) #1

declare dso_local i32 @target_read_string(i64, i8**, i32, i32*) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

declare dso_local i8* @safe_strerror(i32) #1

declare dso_local i32 @free_so(%struct.so_list*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @find_kld_path(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
