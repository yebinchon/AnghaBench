; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_archive_test_compare_acls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_archive_test_compare_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_test_acl_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [35 x i8] c"No ACL's to compare, type mask: %d\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_USER_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No match for user_obj perm\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"USER_OBJ permset (%02o) != user mode (%02o)\00", align 1
@ARCHIVE_ENTRY_ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"No match for group_obj perm\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"GROUP_OBJ permset %02o != group mode %02o\00", align 1
@ARCHIVE_ENTRY_ACL_OTHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"No match for other perm\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"OTHER permset (%02o) != other mode (%02o)\00", align 1
@.str.7 = private unnamed_addr constant [85 x i8] c"Could not find match for ACL (type=%#010x,permset=%#010x,tag=%d,qual=%d,name=``%s'')\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_test_compare_acls(%struct.archive_entry* %0, %struct.archive_test_acl_t* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.archive_test_acl_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %6, align 8
  store %struct.archive_test_acl_t* %1, %struct.archive_test_acl_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32* @malloc(i32 %24)
  store i32* %25, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %49, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %31, i64 %33
  %35 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %40, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %268

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %202, %62
  %64 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @archive_entry_acl_next(%struct.archive_entry* %64, i32 %65, i32* %15, i32* %16, i32* %17, i32* %18, i8** %20)
  store i32 %66, i32* %13, align 4
  %67 = icmp eq i32 0, %66
  br i1 %67, label %68, label %203

68:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  store i32 0, i32* %19, align 4
  br label %69

69:                                               ; preds = %109, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br i1 %78, label %79, label %112

79:                                               ; preds = %77
  %80 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %7, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %80, i64 %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i8*, i8** %20, align 8
  %93 = call i64 @archive_test_acl_match(%struct.archive_test_acl_t* %87, i32 %88, i32 %89, i32 %90, i32 %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %79
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %14, align 4
  store i32 1, i32* %19, align 4
  br label %108

108:                                              ; preds = %95, %79
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %69

112:                                              ; preds = %77
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %112
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER_OBJ, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %10, align 4
  %128 = ashr i32 %127, 6
  %129 = and i32 7, %128
  %130 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i32, i32* %16, align 4
  %132 = shl i32 %131, 6
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 448
  %135 = icmp eq i32 %132, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  br label %202

138:                                              ; preds = %116, %112
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP_OBJ, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %146
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %10, align 4
  %154 = ashr i32 %153, 3
  %155 = and i32 7, %154
  %156 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load i32, i32* %16, align 4
  %158 = shl i32 %157, 3
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, 56
  %161 = icmp eq i32 %158, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  br label %201

164:                                              ; preds = %142, %138
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %164
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @ARCHIVE_ENTRY_ACL_OTHER, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load i32, i32* %19, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %172
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, 7
  %181 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %178, i32 %180)
  %182 = load i32, i32* %16, align 4
  %183 = shl i32 %182, 0
  %184 = load i32, i32* %10, align 4
  %185 = and i32 %184, 7
  %186 = icmp eq i32 %183, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  br label %200

189:                                              ; preds = %168, %164
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i8*, i8** %20, align 8
  %195 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i32 %190, i32 %191, i32 %192, i32 %193, i8* %194)
  %196 = load i32, i32* %19, align 4
  %197 = icmp eq i32 %196, 1
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  br label %200

200:                                              ; preds = %189, %177
  br label %201

201:                                              ; preds = %200, %151
  br label %202

202:                                              ; preds = %201, %125
  br label %63

203:                                              ; preds = %63
  %204 = load i32, i32* @ARCHIVE_EOF, align 4
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @assertEqualInt(i32 %204, i32 %205)
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %203
  %212 = load i32, i32* %10, align 4
  %213 = and i32 %212, 511
  %214 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %215 = call i32 @archive_entry_mode(%struct.archive_entry* %214)
  %216 = and i32 %215, 511
  %217 = icmp eq i32 %213, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  br label %220

220:                                              ; preds = %211, %203
  %221 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %7, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %221, i64 %225
  %227 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %7, align 8
  %230 = load i32*, i32** %11, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %229, i64 %233
  %235 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %7, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %237, i64 %241
  %243 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %7, align 8
  %246 = load i32*, i32** %11, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %245, i64 %249
  %251 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %7, align 8
  %254 = load i32*, i32** %11, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %253, i64 %257
  %259 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %258, i32 0, i32 4
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i32 %228, i32 %236, i32 %244, i32 %252, i8* %260)
  %262 = load i32, i32* %14, align 4
  %263 = icmp eq i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load i32*, i32** %11, align 8
  %267 = call i32 @free(i32* %266)
  br label %268

268:                                              ; preds = %220, %61
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @failure(i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @archive_entry_acl_next(%struct.archive_entry*, i32, i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i64 @archive_test_acl_match(%struct.archive_test_acl_t*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
