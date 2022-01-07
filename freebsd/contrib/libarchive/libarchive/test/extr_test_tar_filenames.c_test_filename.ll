; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_tar_filenames.c_test_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_tar_filenames.c_test_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Pathname %d/%d\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Dirname %d/%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @test_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filename(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8192 x i8], align 16
  %8 = alloca [400 x i8], align 16
  %9 = alloca [400 x i8], align 16
  %10 = alloca %struct.archive_entry*, align 8
  %11 = alloca %struct.archive*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** %13, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = load i8*, i8** %13, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %13, align 8
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %13, align 8
  store i8 97, i8* %36, align 1
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %13, align 8
  store i8 47, i8* %42, align 1
  br label %44

44:                                               ; preds = %41, %27
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %52, %44
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %13, align 8
  store i8 98, i8* %50, align 1
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %45

55:                                               ; preds = %45
  %56 = load i8*, i8** %13, align 8
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %58 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %60, %struct.archive** %11, align 8
  %61 = icmp ne %struct.archive* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.archive*, %struct.archive** %11, align 8
  %65 = call i64 @archive_write_set_format_pax_restricted(%struct.archive* %64)
  %66 = icmp eq i64 0, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assertA(i32 %67)
  %69 = load %struct.archive*, %struct.archive** %11, align 8
  %70 = call i64 @archive_write_add_filter_none(%struct.archive* %69)
  %71 = icmp eq i64 0, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assertA(i32 %72)
  %74 = load %struct.archive*, %struct.archive** %11, align 8
  %75 = call i64 @archive_write_set_bytes_per_block(%struct.archive* %74, i32 0)
  %76 = icmp eq i64 0, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assertA(i32 %77)
  %79 = load %struct.archive*, %struct.archive** %11, align 8
  %80 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %81 = call i64 @archive_write_open_memory(%struct.archive* %79, i8* %80, i32 8192, i64* %12)
  %82 = icmp eq i64 0, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assertA(i32 %83)
  %85 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %85, %struct.archive_entry** %10, align 8
  %86 = icmp ne %struct.archive_entry* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %90 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %91 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %89, i8* %90)
  %92 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %93 = load i32, i32* @S_IFREG, align 4
  %94 = or i32 %93, 493
  %95 = call i32 @archive_entry_set_mode(%struct.archive_entry* %92, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.archive*, %struct.archive** %11, align 8
  %100 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %101 = call i64 @archive_write_header(%struct.archive* %99, %struct.archive_entry* %100)
  %102 = icmp eq i64 0, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assertA(i32 %103)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %106 = call i32 @archive_entry_free(%struct.archive_entry* %105)
  %107 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %107, %struct.archive_entry** %10, align 8
  %108 = icmp ne %struct.archive_entry* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %112 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %113 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %111, i8* %112)
  %114 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %115 = load i32, i32* @S_IFDIR, align 4
  %116 = or i32 %115, 493
  %117 = call i32 @archive_entry_set_mode(%struct.archive_entry* %114, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load %struct.archive*, %struct.archive** %11, align 8
  %122 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %123 = call i64 @archive_write_header(%struct.archive* %121, %struct.archive_entry* %122)
  %124 = icmp eq i64 0, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assertA(i32 %125)
  %127 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %128 = call i32 @archive_entry_free(%struct.archive_entry* %127)
  %129 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %130 = call i32 @strcat(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %131 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %131, %struct.archive_entry** %10, align 8
  %132 = icmp ne %struct.archive_entry* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %136 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %137 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %135, i8* %136)
  %138 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %139 = load i32, i32* @S_IFDIR, align 4
  %140 = or i32 %139, 493
  %141 = call i32 @archive_entry_set_mode(%struct.archive_entry* %138, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load %struct.archive*, %struct.archive** %11, align 8
  %146 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %147 = call i64 @archive_write_header(%struct.archive* %145, %struct.archive_entry* %146)
  %148 = icmp eq i64 0, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assertA(i32 %149)
  %151 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %152 = call i32 @archive_entry_free(%struct.archive_entry* %151)
  %153 = load %struct.archive*, %struct.archive** %11, align 8
  %154 = load i32, i32* @ARCHIVE_OK, align 4
  %155 = load %struct.archive*, %struct.archive** %11, align 8
  %156 = call i32 @archive_write_close(%struct.archive* %155)
  %157 = call i32 @assertEqualIntA(%struct.archive* %153, i32 %154, i32 %156)
  %158 = load i32, i32* @ARCHIVE_OK, align 4
  %159 = load %struct.archive*, %struct.archive** %11, align 8
  %160 = call i32 @archive_write_free(%struct.archive* %159)
  %161 = call i32 @assertEqualInt(i32 %158, i32 %160)
  %162 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %162, %struct.archive** %11, align 8
  %163 = icmp ne %struct.archive* %162, null
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.archive*, %struct.archive** %11, align 8
  %167 = call i64 @archive_read_support_format_all(%struct.archive* %166)
  %168 = icmp eq i64 0, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assertA(i32 %169)
  %171 = load %struct.archive*, %struct.archive** %11, align 8
  %172 = call i64 @archive_read_support_filter_all(%struct.archive* %171)
  %173 = icmp eq i64 0, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assertA(i32 %174)
  %176 = load %struct.archive*, %struct.archive** %11, align 8
  %177 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %178 = load i64, i64* %12, align 8
  %179 = call i64 @archive_read_open_memory(%struct.archive* %176, i8* %177, i64 %178)
  %180 = icmp eq i64 0, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assertA(i32 %181)
  %183 = load %struct.archive*, %struct.archive** %11, align 8
  %184 = call i32 @archive_read_next_header(%struct.archive* %183, %struct.archive_entry** %10)
  %185 = icmp eq i32 0, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assertA(i32 %186)
  %188 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %189 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %190 = call i32 @archive_entry_pathname(%struct.archive_entry* %189)
  %191 = call i32 @assertEqualString(i8* %188, i32 %190)
  %192 = load i32, i32* @S_IFREG, align 4
  %193 = or i32 %192, 493
  %194 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %195 = call i32 @archive_entry_mode(%struct.archive_entry* %194)
  %196 = call i32 @assertEqualInt(i32 %193, i32 %195)
  %197 = load %struct.archive*, %struct.archive** %11, align 8
  %198 = call i32 @archive_read_next_header(%struct.archive* %197, %struct.archive_entry** %10)
  %199 = icmp eq i32 0, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assertA(i32 %200)
  %202 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %203 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %204 = call i32 @archive_entry_pathname(%struct.archive_entry* %203)
  %205 = call i32 @assertEqualString(i8* %202, i32 %204)
  %206 = load i32, i32* @S_IFDIR, align 4
  %207 = or i32 %206, 493
  %208 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %209 = call i32 @archive_entry_mode(%struct.archive_entry* %208)
  %210 = icmp eq i32 %207, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load %struct.archive*, %struct.archive** %11, align 8
  %214 = call i32 @archive_read_next_header(%struct.archive* %213, %struct.archive_entry** %10)
  %215 = icmp eq i32 0, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @assertA(i32 %216)
  %218 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %219 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %220 = call i32 @archive_entry_pathname(%struct.archive_entry* %219)
  %221 = call i32 @assertEqualString(i8* %218, i32 %220)
  %222 = load i32, i32* @S_IFDIR, align 4
  %223 = or i32 %222, 493
  %224 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %225 = call i32 @archive_entry_mode(%struct.archive_entry* %224)
  %226 = icmp eq i32 %223, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  %229 = load %struct.archive*, %struct.archive** %11, align 8
  %230 = call i32 @archive_read_next_header(%struct.archive* %229, %struct.archive_entry** %10)
  %231 = icmp eq i32 1, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load %struct.archive*, %struct.archive** %11, align 8
  %235 = load i32, i32* @ARCHIVE_OK, align 4
  %236 = load %struct.archive*, %struct.archive** %11, align 8
  %237 = call i32 @archive_read_close(%struct.archive* %236)
  %238 = call i32 @assertEqualIntA(%struct.archive* %234, i32 %235, i32 %237)
  %239 = load i32, i32* @ARCHIVE_OK, align 4
  %240 = load %struct.archive*, %struct.archive** %11, align 8
  %241 = call i32 @archive_read_free(%struct.archive* %240)
  %242 = call i32 @assertEqualInt(i32 %239, i32 %241)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_write_set_format_pax_restricted(%struct.archive*) #1

declare dso_local i64 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i64 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i64 @archive_write_open_memory(%struct.archive*, i8*, i32, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @failure(i8*, i32, i32) #1

declare dso_local i64 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
