; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_hash.c_svn_hash_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_hash.c_svn_hash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8* }

@SVN_KEYLINE_MAXLEN = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@SVN_ERR_MALFORMED_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @svn_hash_read(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32, i32* @SVN_KEYLINE_MAXLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  store i32 1, i32* %13, align 4
  br label %26

26:                                               ; preds = %229, %3
  br label %27

27:                                               ; preds = %26
  %28 = trunc i64 %23 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.TYPE_14__* @svn_io_read_length_line(i32* %29, i8* %25, i32* %14, i32* %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @APR_STATUS_IS_EOF(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = call i32 @svn_error_clear(%struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %230

47:                                               ; preds = %40, %34, %27
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %230

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, i8* %25, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 69
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, i8* %25, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 78
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = getelementptr inbounds i8, i8* %25, i64 2
  %68 = load i8, i8* %67, align 2
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 68
  br i1 %70, label %119, label %71

71:                                               ; preds = %66, %61, %56, %53
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %121

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, i8* %25, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 80
  br i1 %78, label %79, label %121

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, i8* %25, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 82
  br i1 %83, label %84, label %121

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, i8* %25, i64 2
  %86 = load i8, i8* %85, align 2
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 79
  br i1 %88, label %89, label %121

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, i8* %25, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 80
  br i1 %93, label %94, label %121

94:                                               ; preds = %89
  %95 = getelementptr inbounds i8, i8* %25, i64 4
  %96 = load i8, i8* %95, align 4
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 83
  br i1 %98, label %99, label %121

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, i8* %25, i64 5
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 45
  br i1 %103, label %104, label %121

104:                                              ; preds = %99
  %105 = getelementptr inbounds i8, i8* %25, i64 6
  %106 = load i8, i8* %105, align 2
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 69
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = getelementptr inbounds i8, i8* %25, i64 7
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 78
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = getelementptr inbounds i8, i8* %25, i64 8
  %116 = load i8, i8* %115, align 8
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 68
  br i1 %118, label %119, label %121

119:                                              ; preds = %114, %66
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %120, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %230

121:                                              ; preds = %114, %109, %104, %99, %94, %89, %84, %79, %74, %71
  %122 = getelementptr inbounds i8, i8* %25, i64 0
  %123 = load i8, i8* %122, align 16
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 75
  br i1 %125, label %126, label %225

126:                                              ; preds = %121
  %127 = getelementptr inbounds i8, i8* %25, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %225

131:                                              ; preds = %126
  %132 = getelementptr inbounds i8, i8* %25, i64 2
  %133 = call %struct.TYPE_14__* @svn_cstring_atoi(i32* %17, i8* %132)
  %134 = call i32 @SVN_ERR(%struct.TYPE_14__* %133)
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %16, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* %16, align 8
  %139 = add i64 %138, 1
  %140 = trunc i64 %139 to i32
  %141 = call i8* @apr_palloc(i32* %137, i32 %140)
  store i8* %141, i8** %18, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = load i64, i64* %16, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %7, align 8
  %147 = call %struct.TYPE_14__* @svn_io_file_read_full2(i32* %142, i8* %143, i32 %145, i32* %11, i32* null, i32* %146)
  %148 = call i32 @SVN_ERR(%struct.TYPE_14__* %147)
  %149 = load i8*, i8** %18, align 8
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i32*, i32** %6, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call %struct.TYPE_14__* @svn_io_file_getc(i8* %12, i32* %152, i32* %153)
  %155 = call i32 @SVN_ERR(%struct.TYPE_14__* %154)
  %156 = load i8, i8* %12, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 10
  br i1 %158, label %159, label %162

159:                                              ; preds = %131
  %160 = load i32, i32* @SVN_ERR_MALFORMED_FILE, align 4
  %161 = call %struct.TYPE_14__* @svn_error_create(i32 %160, i32* null, i32* null)
  store %struct.TYPE_14__* %161, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %230

162:                                              ; preds = %131
  %163 = trunc i64 %23 to i32
  store i32 %163, i32* %14, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = call %struct.TYPE_14__* @svn_io_read_length_line(i32* %164, i8* %25, i32* %14, i32* %165)
  %167 = call i32 @SVN_ERR(%struct.TYPE_14__* %166)
  %168 = getelementptr inbounds i8, i8* %25, i64 0
  %169 = load i8, i8* %168, align 16
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 86
  br i1 %171, label %172, label %221

172:                                              ; preds = %162
  %173 = getelementptr inbounds i8, i8* %25, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 32
  br i1 %176, label %177, label %221

177:                                              ; preds = %172
  %178 = load i32*, i32** %7, align 8
  %179 = call i8* @apr_palloc(i32* %178, i32 16)
  %180 = bitcast i8* %179 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %19, align 8
  %181 = getelementptr inbounds i8, i8* %25, i64 2
  %182 = call %struct.TYPE_14__* @svn_cstring_atoi(i32* %17, i8* %181)
  %183 = call i32 @SVN_ERR(%struct.TYPE_14__* %182)
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %20, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i8* @apr_palloc(i32* %185, i32 %187)
  store i8* %188, i8** %21, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = load i8*, i8** %21, align 8
  %191 = load i32, i32* %20, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = call %struct.TYPE_14__* @svn_io_file_read_full2(i32* %189, i8* %190, i32 %191, i32* %11, i32* null, i32* %192)
  %194 = call i32 @SVN_ERR(%struct.TYPE_14__* %193)
  %195 = load i8*, i8** %21, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  store i8 0, i8* %198, align 1
  %199 = load i32*, i32** %6, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = call %struct.TYPE_14__* @svn_io_file_getc(i8* %12, i32* %199, i32* %200)
  %202 = call i32 @SVN_ERR(%struct.TYPE_14__* %201)
  %203 = load i8, i8* %12, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 10
  br i1 %205, label %206, label %209

206:                                              ; preds = %177
  %207 = load i32, i32* @SVN_ERR_MALFORMED_FILE, align 4
  %208 = call %struct.TYPE_14__* @svn_error_create(i32 %207, i32* null, i32* null)
  store %struct.TYPE_14__* %208, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %230

209:                                              ; preds = %177
  %210 = load i8*, i8** %21, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %20, align 4
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = load i8*, i8** %18, align 8
  %218 = load i64, i64* %16, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %220 = call i32 @apr_hash_set(i32* %216, i8* %217, i64 %218, %struct.TYPE_13__* %219)
  br label %224

221:                                              ; preds = %172, %162
  %222 = load i32, i32* @SVN_ERR_MALFORMED_FILE, align 4
  %223 = call %struct.TYPE_14__* @svn_error_create(i32 %222, i32* null, i32* null)
  store %struct.TYPE_14__* %223, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %230

224:                                              ; preds = %209
  br label %228

225:                                              ; preds = %126, %121
  %226 = load i32, i32* @SVN_ERR_MALFORMED_FILE, align 4
  %227 = call %struct.TYPE_14__* @svn_error_create(i32 %226, i32* null, i32* null)
  store %struct.TYPE_14__* %227, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %230

228:                                              ; preds = %224
  br label %229

229:                                              ; preds = %228
  br label %26

230:                                              ; preds = %225, %221, %206, %159, %119, %50, %43
  %231 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %232
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_14__* @svn_io_read_length_line(i32*, i8*, i32*, i32*) #2

declare dso_local i64 @APR_STATUS_IS_EOF(i32) #2

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #2

declare dso_local i32 @SVN_ERR(%struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_14__* @svn_cstring_atoi(i32*, i8*) #2

declare dso_local i8* @apr_palloc(i32*, i32) #2

declare dso_local %struct.TYPE_14__* @svn_io_file_read_full2(i32*, i8*, i32, i32*, i32*, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_io_file_getc(i8*, i32*, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_error_create(i32, i32*, i32*) #2

declare dso_local i32 @apr_hash_set(i32*, i8*, i64, %struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
