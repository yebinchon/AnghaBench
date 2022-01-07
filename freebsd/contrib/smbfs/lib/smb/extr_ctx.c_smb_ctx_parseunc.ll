; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_parseunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_parseunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i64, i64, i64 }

@SMBL_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"UNC should start with '//'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMBL_VC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"no user name required\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no server name found\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"empty server name\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid NetBIOS port number\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid SMB port number\00", align 1
@SMB_ST_NONE = common dso_local global i32 0, align 4
@SMBL_SHARE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"no share name required\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"unexpected end of line\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"empty share name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_parseunc(%struct.smb_ctx* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i64, i64* @SMBL_NONE, align 8
  %18 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 47
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %10, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 47
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %4
  %32 = call i32 @smb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 0)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %195

34:                                               ; preds = %25
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @getsubstring(i8* %36, i8 signext 64, i8* %37, i32 1024, i8** %10)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %34
  %42 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SMBL_VC, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i32 @smb_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %5, align 4
  br label %195

50:                                               ; preds = %41
  %51 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %53 = call i32 @smb_ctx_setuser(%struct.smb_ctx* %51, i8* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %5, align 4
  br label %195

58:                                               ; preds = %50
  %59 = load i64, i64* @SMBL_VC, align 8
  %60 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %34
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @getsubstring(i8* %63, i8 signext 47, i8* %64, i32 1024, i8** %10)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @getsubstring(i8* %69, i8 signext 0, i8* %70, i32 1024, i8** %10)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = call i32 @smb_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %5, align 4
  br label %195

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = call i32 @smb_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %5, align 4
  br label %195

86:                                               ; preds = %78
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %88 = call i8* @strchr(i8* %87, i8 signext 58)
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %122

91:                                               ; preds = %86
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %12, align 8
  store i8 0, i8* %92, align 1
  %94 = load i8*, i8** %12, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 58)
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  store i8 0, i8* %99, align 1
  %101 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @atoi(i8* %102)
  %104 = call i32 @smb_ctx_setnbport(%struct.smb_ctx* %101, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = call i32 @smb_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %5, align 4
  br label %195

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %91
  %112 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @atoi(i8* %113)
  %115 = call i32 @smb_ctx_setsmbport(%struct.smb_ctx* %112, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = call i32 @smb_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %5, align 4
  br label %195

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %86
  %123 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %125 = call i32 @smb_ctx_setserver(%struct.smb_ctx* %123, i8* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %5, align 4
  br label %195

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @SMB_ST_NONE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i8*, i8** %10, align 8
  %136 = load i8**, i8*** %9, align 8
  store i8* %135, i8** %136, align 8
  store i32 0, i32* %5, align 4
  br label %195

137:                                              ; preds = %130
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %144 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SMBL_SHARE, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = call i32 @smb_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %150 = load i32, i32* @EINVAL, align 4
  store i32 %150, i32* %5, align 4
  br label %195

151:                                              ; preds = %142, %137
  %152 = load i8*, i8** %10, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 @getsubstring(i8* %152, i8 signext 47, i8* %153, i32 1024, i8** %10)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @getsubstring(i8* %158, i8 signext 0, i8* %159, i32 1024, i8** %10)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = call i32 @smb_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %165 = load i32, i32* %15, align 4
  store i32 %165, i32* %5, align 4
  br label %195

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %151
  %168 = load i8*, i8** %11, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %174 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @SMBL_SHARE, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = call i32 @smb_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %5, align 4
  br label %195

181:                                              ; preds = %172, %167
  %182 = load i8*, i8** %10, align 8
  %183 = load i8**, i8*** %9, align 8
  store i8* %182, i8** %183, align 8
  %184 = load i8*, i8** %11, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %195

189:                                              ; preds = %181
  %190 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @smb_ctx_setshare(%struct.smb_ctx* %190, i8* %191, i32 %192)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %189, %188, %178, %163, %148, %134, %128, %118, %107, %83, %74, %56, %47, %31
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @smb_error(i8*, i32) #1

declare dso_local i32 @getsubstring(i8*, i8 signext, i8*, i32, i8**) #1

declare dso_local i32 @smb_ctx_setuser(%struct.smb_ctx*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @smb_ctx_setnbport(%struct.smb_ctx*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @smb_ctx_setsmbport(%struct.smb_ctx*, i32) #1

declare dso_local i32 @smb_ctx_setserver(%struct.smb_ctx*, i8*) #1

declare dso_local i32 @smb_ctx_setshare(%struct.smb_ctx*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
