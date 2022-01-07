; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_verify_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_verify_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.fns = type { i32, i64, i64, i64, i64, i32, i32* }
%struct.archive_entry = type { i32 }

@ROCKRIDGE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Found duplicate for %s\00", align 1
@ONE_DOT = common dso_local global i32 0, align 4
@UPPER_CASE_ONLY = common dso_local global i32 0, align 4
@ALLOW_LDOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32, %struct.fns*)* @verify_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_file(%struct.archive* %0, i32 %1, %struct.fns* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fns*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fns* %2, %struct.fns** %6, align 8
  %13 = load %struct.archive*, %struct.archive** %4, align 8
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = call i32 @archive_read_next_header(%struct.archive* %14, %struct.archive_entry** %7)
  %16 = call i32 @assertEqualIntA(%struct.archive* %13, i32 0, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ROCKRIDGE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %22 = call signext i8 @archive_entry_birthtime(%struct.archive_entry* %21)
  %23 = call i32 @assertEqualInt(i8 signext 2, i8 signext %22)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %25 = call signext i8 @archive_entry_atime(%struct.archive_entry* %24)
  %26 = call i32 @assertEqualInt(i8 signext 3, i8 signext %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %28 = call signext i8 @archive_entry_ctime(%struct.archive_entry* %27)
  %29 = call i32 @assertEqualInt(i8 signext 4, i8 signext %28)
  br label %40

30:                                               ; preds = %3
  %31 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %32 = call signext i8 @archive_entry_birthtime_is_set(%struct.archive_entry* %31)
  %33 = call i32 @assertEqualInt(i8 signext 0, i8 signext %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %35 = call signext i8 @archive_entry_atime(%struct.archive_entry* %34)
  %36 = call i32 @assertEqualInt(i8 signext 5, i8 signext %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %38 = call signext i8 @archive_entry_ctime(%struct.archive_entry* %37)
  %39 = call i32 @assertEqualInt(i8 signext 5, i8 signext %38)
  br label %40

40:                                               ; preds = %30, %20
  %41 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %42 = call signext i8 @archive_entry_mtime(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i8 signext 5, i8 signext %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ROCKRIDGE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32, i32* @S_IFREG, align 4
  %49 = or i32 %48, 365
  %50 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %51 = call i32 @archive_entry_mode(%struct.archive_entry* %50)
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %63

55:                                               ; preds = %40
  %56 = load i32, i32* @S_IFREG, align 4
  %57 = or i32 %56, 256
  %58 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %59 = call i32 @archive_entry_mode(%struct.archive_entry* %58)
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %65 = call signext i8 @archive_entry_size(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i8 signext 0, i8 signext %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %220, %63
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.fns*, %struct.fns** %6, align 8
  %70 = getelementptr inbounds %struct.fns, %struct.fns* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %223

73:                                               ; preds = %67
  %74 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %75 = call i8* @archive_entry_pathname(%struct.archive_entry* %74)
  store i8* %75, i8** %10, align 8
  %76 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %77 = call i8* @archive_entry_symlink(%struct.archive_entry* %76)
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %73
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @strlen(i8* %81)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, 1
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = icmp eq i64 %86, 128
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %12, align 8
  %90 = icmp eq i64 %89, 255
  br label %91

91:                                               ; preds = %88, %85, %80
  %92 = phi i1 [ true, %85 ], [ true, %80 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i8*, i8** %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @assertEqualInt(i8 signext %99, i8 signext 120)
  br label %101

101:                                              ; preds = %91, %73
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %102)
  %104 = load %struct.fns*, %struct.fns** %6, align 8
  %105 = getelementptr inbounds %struct.fns, %struct.fns* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @strcmp(i32 %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i8*, i8** %10, align 8
  %117 = call i64 @strlen(i8* %116)
  store i64 %117, i64* %12, align 8
  %118 = load %struct.fns*, %struct.fns** %6, align 8
  %119 = getelementptr inbounds %struct.fns, %struct.fns* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ule i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.fns*, %struct.fns** %6, align 8
  %126 = getelementptr inbounds %struct.fns, %struct.fns* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ugt i64 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %101
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.fns*, %struct.fns** %6, align 8
  %132 = getelementptr inbounds %struct.fns, %struct.fns* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %101
  %134 = load i8*, i8** %10, align 8
  %135 = call i8* @strrchr(i8* %134, i8 signext 46)
  store i8* %135, i8** %9, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %173

138:                                              ; preds = %133
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = load %struct.fns*, %struct.fns** %6, align 8
  %145 = getelementptr inbounds %struct.fns, %struct.fns* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ule i64 %143, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = call i64 @strlen(i8* %151)
  %153 = load %struct.fns*, %struct.fns** %6, align 8
  %154 = getelementptr inbounds %struct.fns, %struct.fns* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ule i64 %152, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.fns*, %struct.fns** %6, align 8
  %160 = getelementptr inbounds %struct.fns, %struct.fns* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ONE_DOT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %138
  %166 = load i8*, i8** %10, align 8
  %167 = call i8* @strchr(i8* %166, i8 signext 46)
  %168 = load i8*, i8** %9, align 8
  %169 = icmp eq i8* %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  br label %172

172:                                              ; preds = %165, %138
  br label %173

173:                                              ; preds = %172, %133
  %174 = load i8*, i8** %10, align 8
  store i8* %174, i8** %9, align 8
  br label %175

175:                                              ; preds = %202, %173
  %176 = load i8*, i8** %9, align 8
  %177 = load i8, i8* %176, align 1
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %175
  %180 = load %struct.fns*, %struct.fns** %6, align 8
  %181 = getelementptr inbounds %struct.fns, %struct.fns* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @UPPER_CASE_ONLY, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %179
  %187 = load i8*, i8** %9, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp slt i32 %189, 97
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %9, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp sgt i32 %194, 122
  br label %196

196:                                              ; preds = %191, %186
  %197 = phi i1 [ true, %186 ], [ %195, %191 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  br label %201

200:                                              ; preds = %179
  br label %205

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %201
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %9, align 8
  br label %175

205:                                              ; preds = %200, %175
  %206 = load %struct.fns*, %struct.fns** %6, align 8
  %207 = getelementptr inbounds %struct.fns, %struct.fns* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ALLOW_LDOT, align 4
  %210 = and i32 %208, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = load i8*, i8** %10, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 46
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  br label %219

219:                                              ; preds = %212, %205
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %67

223:                                              ; preds = %67
  %224 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %225 = call i8* @archive_entry_pathname(%struct.archive_entry* %224)
  %226 = call i32 @strdup(i8* %225)
  %227 = load %struct.fns*, %struct.fns** %6, align 8
  %228 = getelementptr inbounds %struct.fns, %struct.fns* %227, i32 0, i32 6
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.fns*, %struct.fns** %6, align 8
  %231 = getelementptr inbounds %struct.fns, %struct.fns* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %229, i64 %234
  store i32 %226, i32* %235, align 4
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i8 signext, i8 signext) #1

declare dso_local signext i8 @archive_entry_birthtime(%struct.archive_entry*) #1

declare dso_local signext i8 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local signext i8 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local signext i8 @archive_entry_birthtime_is_set(%struct.archive_entry*) #1

declare dso_local signext i8 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local signext i8 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @failure(i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
