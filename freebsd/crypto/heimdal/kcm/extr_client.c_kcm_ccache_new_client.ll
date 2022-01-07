; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_client.c_kcm_ccache_new_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_client.c_kcm_ccache_new_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.passwd = type { i32 }

@name_constraints = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%ld:\00", align 1
@KRB5_CC_BADNAME = common dso_local global i64 0, align 8
@KRB5_FCC_PERM = common dso_local global i64 0, align 8
@KRB5_FCC_NOFILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize cache %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to empty cache %s: %s\00", align 1
@KCM_OP_INITIALIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcm_ccache_new_client(i32 %0, %struct.TYPE_15__* %1, i8* %2, %struct.TYPE_16__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.passwd*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %9, align 8
  %19 = load i64, i64* @name_constraints, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @snprintf(i8* %22, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @strncmp(i8* %29, i8* %30, i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  br label %45

35:                                               ; preds = %21
  %36 = load i64, i64* %13, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = call i64 @CLIENT_IS_ROOT(%struct.TYPE_15__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @KRB5_CC_BADNAME, align 8
  store i64 %53, i64* %5, align 8
  br label %203

54:                                               ; preds = %48, %45
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @kcm_ccache_resolve(i32 %56, i8* %57, %struct.TYPE_16__** %11)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69, %61
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = call i64 @CLIENT_IS_ROOT(%struct.TYPE_15__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* @KRB5_FCC_PERM, align 8
  store i64 %82, i64* %5, align 8
  br label %203

83:                                               ; preds = %77, %69
  br label %99

84:                                               ; preds = %55
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @KRB5_FCC_NOFILE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = call i64 @CLIENT_IS_ROOT(%struct.TYPE_15__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @KRB5_FCC_PERM, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %92, %88
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %5, align 8
  br label %203

98:                                               ; preds = %92, %84
  br label %99

99:                                               ; preds = %98, %83
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @KRB5_FCC_NOFILE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @kcm_ccache_new(i32 %104, i8* %105, %struct.TYPE_16__** %11)
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @krb5_get_err_text(i32 %111, i64 %112)
  %114 = call i32 @kcm_log(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %110, i32 %113)
  %115 = load i64, i64* %10, align 8
  store i64 %115, i64* %5, align 8
  br label %203

116:                                              ; preds = %103
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %152

132:                                              ; preds = %99
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %135 = call i64 @kcm_zero_ccache_data(i32 %133, %struct.TYPE_16__* %134)
  store i64 %135, i64* %10, align 8
  %136 = load i64, i64* %10, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @krb5_get_err_text(i32 %140, i64 %141)
  %143 = call i32 @kcm_log(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %139, i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %146 = call i32 @kcm_release_ccache(i32 %144, %struct.TYPE_16__* %145)
  %147 = load i64, i64* %10, align 8
  store i64 %147, i64* %5, align 8
  br label %203

148:                                              ; preds = %132
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %151 = call i32 @kcm_cleanup_events(i32 %149, %struct.TYPE_16__* %150)
  br label %152

152:                                              ; preds = %148, %116
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %155 = load i32, i32* @KCM_OP_INITIALIZE, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %157 = call i64 @kcm_access(i32 %153, %struct.TYPE_15__* %154, i32 %155, %struct.TYPE_16__* %156)
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %163 = call i32 @kcm_release_ccache(i32 %161, %struct.TYPE_16__* %162)
  %164 = load i32, i32* %6, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @kcm_ccache_destroy(i32 %164, i8* %165)
  %167 = load i64, i64* %10, align 8
  store i64 %167, i64* %5, align 8
  br label %203

168:                                              ; preds = %152
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %170 = call i64 @CLIENT_IS_ROOT(%struct.TYPE_15__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %168
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @sscanf(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %15)
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @sscanf(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %15)
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i32, i32* %16, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load i64, i64* %15, align 8
  %185 = call %struct.passwd* @getpwuid(i64 %184)
  store %struct.passwd* %185, %struct.passwd** %17, align 8
  %186 = load %struct.passwd*, %struct.passwd** %17, align 8
  %187 = icmp ne %struct.passwd* %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.passwd*, %struct.passwd** %17, align 8
  %190 = getelementptr inbounds %struct.passwd, %struct.passwd* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @kcm_chown(i32 %192, %struct.TYPE_15__* %193, %struct.TYPE_16__* %194, i64 %195, i32 %196)
  br label %198

198:                                              ; preds = %188, %183
  br label %199

199:                                              ; preds = %198, %180
  br label %200

200:                                              ; preds = %199, %168
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %202 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %201, %struct.TYPE_16__** %202, align 8
  store i64 0, i64* %5, align 8
  br label %203

203:                                              ; preds = %200, %160, %138, %109, %96, %81, %52
  %204 = load i64, i64* %5, align 8
  ret i64 %204
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @CLIENT_IS_ROOT(%struct.TYPE_15__*) #1

declare dso_local i64 @kcm_ccache_resolve(i32, i8*, %struct.TYPE_16__**) #1

declare dso_local i64 @kcm_ccache_new(i32, i8*, %struct.TYPE_16__**) #1

declare dso_local i32 @kcm_log(i32, i8*, i8*, i32) #1

declare dso_local i32 @krb5_get_err_text(i32, i64) #1

declare dso_local i64 @kcm_zero_ccache_data(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @kcm_cleanup_events(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @kcm_access(i32, %struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @kcm_ccache_destroy(i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @kcm_chown(i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
