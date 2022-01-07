; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32, i64, i64*, %struct.TYPE_3__*, i32, i64, %struct.smbioc_oshare, %struct.smbioc_ossn }
%struct.TYPE_3__ = type { i32 }
%struct.smbioc_oshare = type { i64* }
%struct.smbioc_ossn = type { i64*, i64*, i64*, i64*, i32, i32, %struct.sockaddr*, %struct.sockaddr*, i32 }
%struct.sockaddr = type { i32 }
%struct.nb_name = type { i32, i32, i32 }
%struct.sockaddr_nb = type { i32 }

@SMBCF_RESOLVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no server name specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMBL_SHARE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"no share name specified for %s@%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ISO8859-1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tolower\00", align 1
@nls_lower = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"toupper\00", align 1
@nls_upper = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"can't get server address\00", align 1
@NBT_SERVER = common dso_local global i32 0, align 4
@NB_NAMELEN = common dso_local global i32 0, align 4
@NBERR_NAMETOOLONG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"can't allocate server address\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"can't get local name\00", align 1
@NBT_WKSTA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"can't allocate local address\00", align 1
@SMBCF_NOPWD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Password:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_resolve(%struct.smb_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_ctx*, align 8
  %4 = alloca %struct.smbioc_ossn*, align 8
  %5 = alloca %struct.smbioc_oshare*, align 8
  %6 = alloca %struct.nb_name, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_nb*, align 8
  %9 = alloca %struct.sockaddr_nb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %3, align 8
  %12 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %12, i32 0, i32 7
  store %struct.smbioc_ossn* %13, %struct.smbioc_ossn** %4, align 8
  %14 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %14, i32 0, i32 6
  store %struct.smbioc_oshare* %15, %struct.smbioc_oshare** %5, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @SMBCF_RESOLVED, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %23 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0)
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %2, align 4
  br label %277

31:                                               ; preds = %1
  %32 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SMBL_SHARE, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.smbioc_oshare*, %struct.smbioc_oshare** %5, align 8
  %39 = getelementptr inbounds %struct.smbioc_oshare, %struct.smbioc_oshare* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %46 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %49 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %47, i64* %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %2, align 4
  br label %277

53:                                               ; preds = %37, %31
  %54 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @nb_ctx_resolve(%struct.TYPE_3__* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %2, align 4
  br label %277

62:                                               ; preds = %53
  %63 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %64 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %71 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @strcpy(i64* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %76 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* @nls_lower, align 4
  %79 = call i32 @smb_addiconvtbl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %277

84:                                               ; preds = %74
  %85 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %86 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* @nls_upper, align 4
  %89 = call i32 @smb_addiconvtbl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %2, align 4
  br label %277

94:                                               ; preds = %84
  %95 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %96 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %103 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %106 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = call i32 @kiconv_add_xlat16_cspairs(i64* %104, i64* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %2, align 4
  br label %277

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %94
  %115 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %116 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @nb_resolvehost_in(i64 %122, %struct.sockaddr** %7, i32 %125)
  store i32 %126, i32* %11, align 4
  br label %135

127:                                              ; preds = %114
  %128 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %129 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %131, i32 0, i32 3
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = call i32 @nbns_resolvename(i64* %130, %struct.TYPE_3__* %133, %struct.sockaddr** %7)
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %127, %119
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %2, align 4
  br label %277

142:                                              ; preds = %135
  %143 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %143, i32 0, i32 3
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %6, i32 0, i32 0
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @NBT_SERVER, align 4
  %150 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %6, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %152 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = call i32 @strlen(i64* %153)
  %155 = load i32, i32* @NB_NAMELEN, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %142
  %158 = load i32, i32* @NBERR_NAMETOOLONG, align 4
  %159 = call i32 @NBERROR(i32 %158)
  store i32 %159, i32* %2, align 4
  br label %277

160:                                              ; preds = %142
  %161 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %6, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %164 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = call i32 @strlcpy(i32 %162, i64* %165, i32 4)
  %167 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %168 = call i32 @nb_sockaddr(%struct.sockaddr* %167, %struct.nb_name* %6, %struct.sockaddr_nb** %9)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %170 = call i32 @nb_snbfree(%struct.sockaddr* %169)
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %160
  %174 = load i32, i32* %11, align 4
  %175 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %2, align 4
  br label %277

177:                                              ; preds = %160
  %178 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %9, align 8
  %179 = bitcast %struct.sockaddr_nb* %178 to %struct.sockaddr*
  %180 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %181 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %180, i32 0, i32 7
  store %struct.sockaddr* %179, %struct.sockaddr** %181, align 8
  %182 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %183 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %182, i32 0, i32 2
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %177
  %189 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %190 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %189, i32 0, i32 2
  %191 = load i64*, i64** %190, align 8
  %192 = call i32 @nb_getlocalname(i64* %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* %11, align 4
  %197 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %11, align 4
  store i32 %198, i32* %2, align 4
  br label %277

199:                                              ; preds = %188
  %200 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %201 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %204 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %203, i32 0, i32 2
  %205 = load i64*, i64** %204, align 8
  %206 = call i32 @nls_str_upper(i64* %202, i64* %205)
  br label %207

207:                                              ; preds = %199, %177
  %208 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %6, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %211 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %210, i32 0, i32 2
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* @NB_NAMELEN, align 4
  %214 = call i32 @strlcpy(i32 %209, i64* %212, i32 %213)
  %215 = load i32, i32* @NBT_WKSTA, align 4
  %216 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %6, i32 0, i32 1
  store i32 %215, i32* %216, align 4
  %217 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %218 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %217, i32 0, i32 3
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %6, i32 0, i32 0
  store i32 %221, i32* %222, align 4
  %223 = call i32 @nb_sockaddr(%struct.sockaddr* null, %struct.nb_name* %6, %struct.sockaddr_nb** %8)
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %207
  %227 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %9, align 8
  %228 = bitcast %struct.sockaddr_nb* %227 to %struct.sockaddr*
  %229 = call i32 @nb_snbfree(%struct.sockaddr* %228)
  %230 = load i32, i32* %11, align 4
  %231 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %11, align 4
  store i32 %232, i32* %2, align 4
  br label %277

233:                                              ; preds = %207
  %234 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %8, align 8
  %235 = bitcast %struct.sockaddr_nb* %234 to %struct.sockaddr*
  %236 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %237 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %236, i32 0, i32 6
  store %struct.sockaddr* %235, %struct.sockaddr** %237, align 8
  %238 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %8, align 8
  %239 = getelementptr inbounds %struct.sockaddr_nb, %struct.sockaddr_nb* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %242 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  %243 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %9, align 8
  %244 = getelementptr inbounds %struct.sockaddr_nb, %struct.sockaddr_nb* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %247 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 8
  %248 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %249 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %248, i32 0, i32 3
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %271

254:                                              ; preds = %233
  %255 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %256 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @SMBCF_NOPWD, align 4
  %259 = and i32 %257, %258
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %254
  %262 = call i8* @getpass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %262, i8** %10, align 8
  %263 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = call i32 @smb_ctx_setpassword(%struct.smb_ctx* %263, i8* %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %261
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %2, align 4
  br label %277

270:                                              ; preds = %261
  br label %271

271:                                              ; preds = %270, %254, %233
  %272 = load i32, i32* @SMBCF_RESOLVED, align 4
  %273 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %274 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %271, %268, %226, %195, %173, %157, %138, %111, %92, %82, %60, %44, %28
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i32 @smb_error(i8*, i32, ...) #1

declare dso_local i32 @nb_ctx_resolve(%struct.TYPE_3__*) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @smb_addiconvtbl(i8*, i64*, i32) #1

declare dso_local i32 @kiconv_add_xlat16_cspairs(i64*, i64*) #1

declare dso_local i32 @nb_resolvehost_in(i64, %struct.sockaddr**, i32) #1

declare dso_local i32 @nbns_resolvename(i64*, %struct.TYPE_3__*, %struct.sockaddr**) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @NBERROR(i32) #1

declare dso_local i32 @strlcpy(i32, i64*, i32) #1

declare dso_local i32 @nb_sockaddr(%struct.sockaddr*, %struct.nb_name*, %struct.sockaddr_nb**) #1

declare dso_local i32 @nb_snbfree(%struct.sockaddr*) #1

declare dso_local i32 @nb_getlocalname(i64*) #1

declare dso_local i32 @nls_str_upper(i64*, i64*) #1

declare dso_local i8* @getpass(i8*) #1

declare dso_local i32 @smb_ctx_setpassword(%struct.smb_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
