; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_init_stringtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_init_stringtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i64, i32 }
%struct.coff_symfile_info = type { i8* }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot seek to string table in %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot read string table from %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"bad symbol file: string table does not end with null character\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.objfile*)* @init_stringtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_stringtab(i32* %0, i32 %1, %struct.objfile* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.objfile* %2, %struct.objfile** %6, align 8
  %11 = load %struct.objfile*, %struct.objfile** %6, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.coff_symfile_info*
  %15 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %14, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i64 @bfd_seek(i32* %16, i32 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @bfd_get_filename(i32* %22)
  %24 = call i32 (...) @bfd_get_error()
  %25 = call i8* @bfd_errmsg(i32 %24)
  %26 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %25)
  br label %27

27:                                               ; preds = %21, %3
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @bfd_bread(i8* %28, i32 4, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %33 = call i64 @bfd_h_get_32(i32* %31, i8* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %27
  br label %89

41:                                               ; preds = %37
  %42 = load %struct.objfile*, %struct.objfile** %6, align 8
  %43 = getelementptr inbounds %struct.objfile, %struct.objfile* %42, i32 0, i32 1
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @obstack_alloc(i32* %43, i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.objfile*, %struct.objfile** %6, align 8
  %49 = getelementptr inbounds %struct.objfile, %struct.objfile* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.coff_symfile_info*
  %52 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %51, i32 0, i32 0
  store i8* %47, i8** %52, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %55 = call i32 @memcpy(i8* %53, i8* %54, i32 4)
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %89

59:                                               ; preds = %41
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @bfd_bread(i8* %61, i32 %64, i32* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %69, 4
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @bfd_get_filename(i32* %73)
  %75 = call i32 (...) @bfd_get_error()
  %76 = call i8* @bfd_errmsg(i32 %75)
  %77 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %74, i8* %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub nsw i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %78
  br label %89

89:                                               ; preds = %88, %58, %40
  ret void
}

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i64 @bfd_h_get_32(i32*, i8*) #1

declare dso_local i64 @obstack_alloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
