; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32, i32, i32, i8*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.passwd = type { i8* }

@SMBL_NONE = common dso_local global i32 0, align 4
@SMB_TCP_PORT = common dso_local global i32 0, align 4
@SMBVOPT_CREATE = common dso_local global i8* null, align 8
@SMBM_ANY_OWNER = common dso_local global i8* null, align 8
@SMBM_ANY_GROUP = common dso_local global i8* null, align 8
@SMBM_EXEC = common dso_local global i8* null, align 8
@SMBM_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c":E:L:U:\00", align 1
@cf_optarg = common dso_local global i8* null, align 8
@cf_optreset = common dso_local global i32 0, align 4
@cf_optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_init(%struct.smb_ctx* %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.passwd*, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %21 = call i32 @bzero(%struct.smb_ctx* %20, i32 128)
  %22 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %22, i32 0, i32 4
  %24 = call i32 @nb_ctx_create(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %7, align 4
  br label %193

29:                                               ; preds = %6
  %30 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* @SMBL_NONE, align 4
  %33 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @SMB_TCP_PORT, align 4
  %42 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** @SMBVOPT_CREATE, align 8
  %45 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  store i8* %44, i8** %47, align 8
  %48 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 15, i32* %50, align 8
  %51 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 4, i32* %53, align 4
  %54 = load i8*, i8** @SMBM_ANY_OWNER, align 8
  %55 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** @SMBM_ANY_GROUP, align 8
  %59 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** @SMBM_EXEC, align 8
  %63 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** @SMBM_DEFAULT, align 8
  %67 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** @SMBVOPT_CREATE, align 8
  %71 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** @SMBM_ANY_OWNER, align 8
  %75 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** @SMBM_ANY_GROUP, align 8
  %79 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @SMBM_EXEC, align 8
  %83 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  %86 = load i8*, i8** @SMBM_DEFAULT, align 8
  %87 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** @SMBM_ANY_OWNER, align 8
  %91 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load i8*, i8** @SMBM_ANY_GROUP, align 8
  %95 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %96 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @nb_ctx_setscope(i32 %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %102 = call i64 (...) @geteuid()
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call %struct.passwd* @getpwuid(i64 %103)
  store %struct.passwd* %104, %struct.passwd** %19, align 8
  %105 = icmp ne %struct.passwd* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %29
  %107 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %108 = load %struct.passwd*, %struct.passwd** %19, align 8
  %109 = getelementptr inbounds %struct.passwd, %struct.passwd* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @smb_ctx_setuser(%struct.smb_ctx* %107, i8* %110)
  %112 = call i32 (...) @endpwent()
  br label %121

113:                                              ; preds = %29
  %114 = load i64, i64* %16, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %118 = call i32 @smb_ctx_setuser(%struct.smb_ctx* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %120

119:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %193

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %106
  %122 = load i8**, i8*** %10, align 8
  %123 = icmp eq i8** %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %193

125:                                              ; preds = %121
  store i32 1, i32* %14, align 4
  br label %126

126:                                              ; preds = %153, %125
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %156

130:                                              ; preds = %126
  %131 = load i8**, i8*** %10, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %18, align 8
  %136 = load i8*, i8** %18, align 8
  %137 = call i64 @strncmp(i8* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %153

140:                                              ; preds = %130
  %141 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %142 = load i8*, i8** %18, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @smb_ctx_parseunc(%struct.smb_ctx* %141, i8* %142, i32 %143, i8** %18)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %7, align 4
  br label %193

149:                                              ; preds = %140
  %150 = load i8*, i8** %18, align 8
  %151 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %152 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %156

153:                                              ; preds = %139
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %126

156:                                              ; preds = %149, %126
  br label %157

157:                                              ; preds = %190, %156
  %158 = load i32, i32* %15, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i32, i32* %9, align 4
  %162 = load i8**, i8*** %10, align 8
  %163 = call i32 @cf_getopt(i32 %161, i8** %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %163, i32* %14, align 4
  %164 = icmp ne i32 %163, -1
  br label %165

165:                                              ; preds = %160, %157
  %166 = phi i1 [ false, %157 ], [ %164, %160 ]
  br i1 %166, label %167, label %191

167:                                              ; preds = %165
  %168 = load i8*, i8** @cf_optarg, align 8
  store i8* %168, i8** %17, align 8
  %169 = load i32, i32* %14, align 4
  switch i32 %169, label %190 [
    i32 69, label %170
    i32 76, label %179
    i32 85, label %186
  ]

170:                                              ; preds = %167
  %171 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %172 = load i8*, i8** %17, align 8
  %173 = call i32 @smb_ctx_setcharset(%struct.smb_ctx* %171, i8* %172)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %7, align 4
  br label %193

178:                                              ; preds = %170
  br label %190

179:                                              ; preds = %167
  %180 = load i8*, i8** %17, align 8
  %181 = call i32 @nls_setlocale(i8* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %190

185:                                              ; preds = %179
  br label %190

186:                                              ; preds = %167
  %187 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = call i32 @smb_ctx_setuser(%struct.smb_ctx* %187, i8* %188)
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %167, %186, %185, %184, %178
  br label %157

191:                                              ; preds = %165
  store i32 1, i32* @cf_optreset, align 4
  store i32 1, i32* @cf_optind, align 4
  %192 = load i32, i32* %15, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %176, %147, %124, %119, %27
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local i32 @bzero(%struct.smb_ctx*, i32) #1

declare dso_local i32 @nb_ctx_create(i32*) #1

declare dso_local i32 @nb_ctx_setscope(i32, i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @smb_ctx_setuser(%struct.smb_ctx*, i8*) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @smb_ctx_parseunc(%struct.smb_ctx*, i8*, i32, i8**) #1

declare dso_local i32 @cf_getopt(i32, i8**, i8*) #1

declare dso_local i32 @smb_ctx_setcharset(%struct.smb_ctx*, i8*) #1

declare dso_local i32 @nls_setlocale(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
