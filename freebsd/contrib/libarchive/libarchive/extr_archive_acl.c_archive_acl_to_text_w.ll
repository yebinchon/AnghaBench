; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_to_text_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_to_text_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32, %struct.archive_acl_entry* }
%struct.archive_acl_entry = type { i32, i64, i32, i32, i32, %struct.archive_acl_entry* }
%struct.archive = type { i32 }

@ARCHIVE_ENTRY_ACL_TYPE_POSIX1E = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_USER_OBJ = common dso_local global i64 0, align 8
@ARCHIVE_ENTRY_ACL_GROUP_OBJ = common dso_local global i64 0, align 8
@ARCHIVE_ENTRY_ACL_OTHER = common dso_local global i64 0, align 8
@ARCHIVE_ENTRY_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 100, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 58, i32 0], align 4
@ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Buffer overrun\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @archive_acl_to_text_w(%struct.archive_acl* %0, i32* %1, i32 %2, %struct.archive* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.archive_acl*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.archive_acl_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.archive* %3, %struct.archive** %9, align 8
  %22 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @archive_acl_text_want_type(%struct.archive_acl* %22, i32 %23)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i8** null, i8*** %5, align 8
  br label %237

28:                                               ; preds = %4
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.archive*, %struct.archive** %9, align 8
  %41 = call i32 @archive_acl_text_len(%struct.archive_acl* %37, i32 %38, i32 %39, i32 1, %struct.archive* %40, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i8** null, i8*** %5, align 8
  br label %237

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8* inttoptr (i64 44 to i8*), i8** %15, align 8
  br label %52

51:                                               ; preds = %45
  store i8* inttoptr (i64 10 to i8*), i8** %15, align 8
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @malloc(i32 %56)
  %58 = inttoptr i64 %57 to i8**
  store i8** %58, i8*** %21, align 8
  store i8** %58, i8*** %20, align 8
  %59 = load i8**, i8*** %20, align 8
  %60 = icmp eq i8** %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  store i8** null, i8*** %5, align 8
  br label %237

68:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %68
  %74 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %75 = load i64, i64* @ARCHIVE_ENTRY_ACL_USER_OBJ, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %78 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 448
  %81 = call i32 @append_entry_w(i8*** %20, i8** null, i32 %74, i64 %75, i32 %76, i8** null, i32 %80, i32 -1)
  %82 = load i8*, i8** %15, align 8
  %83 = load i8**, i8*** %20, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %20, align 8
  store i8* %82, i8** %83, align 8
  %85 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %86 = load i64, i64* @ARCHIVE_ENTRY_ACL_GROUP_OBJ, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %89 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 56
  %92 = call i32 @append_entry_w(i8*** %20, i8** null, i32 %85, i64 %86, i32 %87, i8** null, i32 %91, i32 -1)
  %93 = load i8*, i8** %15, align 8
  %94 = load i8**, i8*** %20, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %20, align 8
  store i8* %93, i8** %94, align 8
  %96 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %97 = load i64, i64* @ARCHIVE_ENTRY_ACL_OTHER, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %100 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 7
  %103 = call i32 @append_entry_w(i8*** %20, i8** null, i32 %96, i64 %97, i32 %98, i8** null, i32 %102, i32 -1)
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 3
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %73, %68
  %107 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %108 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %107, i32 0, i32 1
  %109 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %108, align 8
  store %struct.archive_acl_entry* %109, %struct.archive_acl_entry** %16, align 8
  br label %110

110:                                              ; preds = %212, %106
  %111 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %112 = icmp ne %struct.archive_acl_entry* %111, null
  br i1 %112, label %113, label %216

113:                                              ; preds = %110
  %114 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %115 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %212

121:                                              ; preds = %113
  %122 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %123 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %129 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ARCHIVE_ENTRY_ACL_USER_OBJ, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %145, label %133

133:                                              ; preds = %127
  %134 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %135 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ARCHIVE_ENTRY_ACL_GROUP_OBJ, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %141 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ARCHIVE_ENTRY_ACL_OTHER, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139, %133, %127
  br label %212

146:                                              ; preds = %139, %121
  %147 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %148 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i8** bitcast ([9 x i32]* @.str.1 to i8**), i8*** %14, align 8
  br label %159

158:                                              ; preds = %152, %146
  store i8** null, i8*** %14, align 8
  br label %159

159:                                              ; preds = %158, %157
  %160 = load %struct.archive*, %struct.archive** %9, align 8
  %161 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %162 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %161, i32 0, i32 4
  %163 = call i32 @archive_mstring_get_wcs(%struct.archive* %160, i32* %162, i8*** %13)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %159
  %167 = load i32, i32* %10, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i8*, i8** %15, align 8
  %171 = load i8**, i8*** %20, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %20, align 8
  store i8* %170, i8** %171, align 8
  br label %173

173:                                              ; preds = %169, %166
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %180 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %17, align 4
  br label %183

182:                                              ; preds = %173
  store i32 -1, i32* %17, align 4
  br label %183

183:                                              ; preds = %182, %178
  %184 = load i8**, i8*** %14, align 8
  %185 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %186 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %189 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i8**, i8*** %13, align 8
  %193 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %194 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %17, align 4
  %197 = call i32 @append_entry_w(i8*** %20, i8** %184, i32 %187, i64 %190, i32 %191, i8** %192, i32 %195, i32 %196)
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %211

200:                                              ; preds = %159
  %201 = load i32, i32* %18, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load i64, i64* @errno, align 8
  %205 = load i64, i64* @ENOMEM, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i8**, i8*** %21, align 8
  %209 = call i32 @free(i8** %208)
  store i8** null, i8*** %5, align 8
  br label %237

210:                                              ; preds = %203, %200
  br label %211

211:                                              ; preds = %210, %183
  br label %212

212:                                              ; preds = %211, %145, %120
  %213 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %214 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %213, i32 0, i32 5
  %215 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %214, align 8
  store %struct.archive_acl_entry* %215, %struct.archive_acl_entry** %16, align 8
  br label %110

216:                                              ; preds = %110
  %217 = load i8**, i8*** %20, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i32 1
  store i8** %218, i8*** %20, align 8
  store i8* null, i8** %217, align 8
  %219 = load i8**, i8*** %21, align 8
  %220 = call i64 @wcslen(i8** %219)
  store i64 %220, i64* %12, align 8
  %221 = load i64, i64* %12, align 8
  %222 = trunc i64 %221 to i32
  %223 = load i32, i32* %11, align 4
  %224 = sub nsw i32 %223, 1
  %225 = icmp sgt i32 %222, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %216
  %227 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %216
  %229 = load i32*, i32** %7, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i64, i64* %12, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32*, i32** %7, align 8
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %231, %228
  %236 = load i8**, i8*** %21, align 8
  store i8** %236, i8*** %5, align 8
  br label %237

237:                                              ; preds = %235, %207, %67, %44, %27
  %238 = load i8**, i8*** %5, align 8
  ret i8** %238
}

declare dso_local i32 @archive_acl_text_want_type(%struct.archive_acl*, i32) #1

declare dso_local i32 @archive_acl_text_len(%struct.archive_acl*, i32, i32, i32, %struct.archive*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

declare dso_local i32 @append_entry_w(i8***, i8**, i32, i64, i32, i8**, i32, i32) #1

declare dso_local i32 @archive_mstring_get_wcs(%struct.archive*, i32*, i8***) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i64 @wcslen(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
