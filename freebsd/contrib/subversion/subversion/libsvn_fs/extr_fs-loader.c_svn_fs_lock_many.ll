; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_lock_many.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_lock_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_10__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_XML_UNESCAPABLE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Lock comment contains illegal characters\00", align 1
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Negative expiration date passed to svn_fs_lock\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"opaquelocktoken:\00", align 1
@SVN_ERR_FS_BAD_LOCK_TOKEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Lock token URI '%s' has bad scheme; expected '%s'\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"opaquelocktoken\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Lock token '%s' is not ASCII or is a control character at byte %u\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Lock token URI '%s' is not XML-safe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_lock_many(%struct.TYPE_9__* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32* (i8*, i32, i32*, i32*, i32*)* %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32* (i8*, i32, i32*, i32*, i32*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* (i8*, i32, i32*, i32*, i32*)* %6, i32* (i8*, i32, i32*, i32*, i32*)** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load i32*, i32** %21, align 8
  %29 = call i32* @apr_hash_make(i32* %28)
  store i32* %29, i32** %23, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %25, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %10
  %34 = load i8*, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @svn_xml_is_xml_safe(i8* %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @SVN_ERR_XML_UNESCAPABLE_DATA, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %42 = call i32* @svn_error_create(i32 %40, i32* null, i32 %41)
  store i32* %42, i32** %11, align 8
  br label %225

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32* @svn_error_create(i32 %48, i32* null, i32 %49)
  store i32* %50, i32** %11, align 8
  br label %225

51:                                               ; preds = %44
  %52 = load i32*, i32** %21, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i32* @apr_hash_first(i32* %52, i32* %53)
  store i32* %54, i32** %22, align 8
  br label %55

55:                                               ; preds = %179, %51
  %56 = load i32*, i32** %22, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %182

58:                                               ; preds = %55
  %59 = load i32*, i32** %22, align 8
  %60 = call %struct.TYPE_10__* @apr_hash_this_val(i32* %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %26, align 8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %24, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %152

66:                                               ; preds = %58
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strncmp(i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %73, i32* null, i32 %74, i8* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32* %78, i32** %24, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32*, i32** %24, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %151, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %27, align 8
  br label %86

86:                                               ; preds = %123, %82
  %87 = load i8*, i8** %27, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %24, align 8
  %93 = icmp ne i32* %92, null
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i1 [ false, %86 ], [ %94, %91 ]
  br i1 %96, label %97, label %126

97:                                               ; preds = %95
  %98 = load i8*, i8** %27, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @svn_ctype_isascii(i8 signext %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %27, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i64 @svn_ctype_iscntrl(i8 signext %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102, %97
  %108 = load i32, i32* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 4
  %109 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %27, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %113 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %108, i32* null, i32 %109, i8* %112, i32 %120)
  store i32* %121, i32** %24, align 8
  br label %122

122:                                              ; preds = %107, %102
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %27, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %27, align 8
  br label %86

126:                                              ; preds = %95
  %127 = load i32*, i32** %24, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %150, label %129

129:                                              ; preds = %126
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %27, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %133 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @svn_xml_is_xml_safe(i8* %132, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %129
  %144 = load i32, i32* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 4
  %145 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %144, i32* null, i32 %145, i8* %148)
  store i32* %149, i32** %24, align 8
  br label %150

150:                                              ; preds = %143, %129, %126
  br label %151

151:                                              ; preds = %150, %79
  br label %152

152:                                              ; preds = %151, %58
  %153 = load i32*, i32** %24, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = load i32*, i32** %25, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %169, label %158

158:                                              ; preds = %155
  %159 = load i32* (i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i32, i32*, i32*, i32*)** %18, align 8
  %160 = icmp ne i32* (i8*, i32, i32*, i32*, i32*)* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32* (i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i32, i32*, i32*, i32*)** %18, align 8
  %163 = load i8*, i8** %19, align 8
  %164 = load i32*, i32** %22, align 8
  %165 = call i32 @apr_hash_this_key(i32* %164)
  %166 = load i32*, i32** %24, align 8
  %167 = load i32*, i32** %21, align 8
  %168 = call i32* %162(i8* %163, i32 %165, i32* null, i32* %166, i32* %167)
  store i32* %168, i32** %25, align 8
  br label %169

169:                                              ; preds = %161, %158, %155
  %170 = load i32*, i32** %24, align 8
  %171 = call i32 @svn_error_clear(i32* %170)
  br label %178

172:                                              ; preds = %152
  %173 = load i32*, i32** %23, align 8
  %174 = load i32*, i32** %22, align 8
  %175 = call i32 @apr_hash_this_key(i32* %174)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %177 = call i32 @svn_hash_sets(i32* %173, i32 %175, %struct.TYPE_10__* %176)
  br label %178

178:                                              ; preds = %172, %169
  br label %179

179:                                              ; preds = %178
  %180 = load i32*, i32** %22, align 8
  %181 = call i32* @apr_hash_next(i32* %180)
  store i32* %181, i32** %22, align 8
  br label %55

182:                                              ; preds = %55
  %183 = load i32*, i32** %23, align 8
  %184 = call i32 @apr_hash_count(i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = load i32*, i32** %25, align 8
  %188 = call i32* @svn_error_trace(i32* %187)
  store i32* %188, i32** %11, align 8
  br label %225

189:                                              ; preds = %182
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = bitcast {}** %193 to i32* (%struct.TYPE_9__*, i32*, i8*, i32, i32, i32, i32* (i8*, i32, i32*, i32*, i32*)*, i8*, i32*, i32*)**
  %195 = load i32* (%struct.TYPE_9__*, i32*, i8*, i32, i32, i32, i32* (i8*, i32, i32*, i32*, i32*)*, i8*, i32*, i32*)*, i32* (%struct.TYPE_9__*, i32*, i8*, i32, i32, i32, i32* (i8*, i32, i32*, i32*, i32*)*, i8*, i32*, i32*)** %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %197 = load i32*, i32** %23, align 8
  %198 = load i8*, i8** %14, align 8
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = load i32* (i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i32, i32*, i32*, i32*)** %18, align 8
  %203 = load i8*, i8** %19, align 8
  %204 = load i32*, i32** %20, align 8
  %205 = load i32*, i32** %21, align 8
  %206 = call i32* %195(%struct.TYPE_9__* %196, i32* %197, i8* %198, i32 %199, i32 %200, i32 %201, i32* (i8*, i32, i32*, i32*, i32*)* %202, i8* %203, i32* %204, i32* %205)
  store i32* %206, i32** %24, align 8
  %207 = load i32*, i32** %24, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %189
  %210 = load i32*, i32** %25, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32*, i32** %24, align 8
  %214 = load i32*, i32** %25, align 8
  %215 = call i32 @svn_error_compose(i32* %213, i32* %214)
  br label %222

216:                                              ; preds = %209, %189
  %217 = load i32*, i32** %24, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load i32*, i32** %25, align 8
  store i32* %220, i32** %24, align 8
  br label %221

221:                                              ; preds = %219, %216
  br label %222

222:                                              ; preds = %221, %212
  %223 = load i32*, i32** %24, align 8
  %224 = call i32* @svn_error_trace(i32* %223)
  store i32* %224, i32** %11, align 8
  br label %225

225:                                              ; preds = %222, %186, %47, %39
  %226 = load i32*, i32** %11, align 8
  ret i32* %226
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_xml_is_xml_safe(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @apr_hash_this_val(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @svn_ctype_isascii(i8 signext) #1

declare dso_local i64 @svn_ctype_iscntrl(i8 signext) #1

declare dso_local i32 @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
