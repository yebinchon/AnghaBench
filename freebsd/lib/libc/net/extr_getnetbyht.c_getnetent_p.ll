; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetbyht.c_getnetent_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetbyht.c_getnetent_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent = type { i8*, i8**, i32, i32 }
%struct.netent_data = type { i8*, i8**, i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@_PATH_NETWORKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@_MAXALIASES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netent*, %struct.netent_data*)* @getnetent_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnetent_p(%struct.netent* %0, %struct.netent_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netent*, align 8
  %5 = alloca %struct.netent_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.netent* %0, %struct.netent** %4, align 8
  store %struct.netent_data* %1, %struct.netent_data** %5, align 8
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.netent_data*, %struct.netent_data** %5, align 8
  %21 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @_PATH_NETWORKS, align 4
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.netent_data*, %struct.netent_data** %5, align 8
  %28 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = icmp eq i32* %26, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %218

31:                                               ; preds = %24, %2
  br label %32

32:                                               ; preds = %69, %46, %31
  %33 = trunc i64 %17 to i32
  %34 = load %struct.netent_data*, %struct.netent_data** %5, align 8
  %35 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i8* @fgets(i8* %19, i32 %33, i32* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %218

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 35
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %32

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @strpbrk(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %47
  %55 = load %struct.netent_data*, %struct.netent_data** %5, align 8
  %56 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %7, align 8
  %58 = load %struct.netent_data*, %struct.netent_data** %5, align 8
  %59 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.netent*, %struct.netent** %4, align 8
  %64 = getelementptr inbounds %struct.netent, %struct.netent* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @strpbrk(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %32

70:                                               ; preds = %54
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  store i8 0, i8* %71, align 1
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = call i32 (...) @__res_state()
  %86 = load i32, i32* @NO_RECOVERY, align 4
  %87 = call i32 @RES_SET_H_ERRNO(i32 %85, i32 %86)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %218

88:                                               ; preds = %70
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @strlcpy(i8* %89, i8* %90, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %7, align 8
  br label %102

102:                                              ; preds = %114, %88
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 9
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i1 [ true, %102 ], [ %111, %107 ]
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  br label %102

117:                                              ; preds = %112
  %118 = load i8*, i8** %9, align 8
  %119 = call i8* @strpbrk(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %119, i8** %6, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  store i8 0, i8* %123, align 1
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @inet_network(i8* %126)
  %128 = load %struct.netent*, %struct.netent** %4, align 8
  %129 = getelementptr inbounds %struct.netent, %struct.netent* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @AF_INET, align 4
  %131 = load %struct.netent*, %struct.netent** %4, align 8
  %132 = getelementptr inbounds %struct.netent, %struct.netent* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.netent_data*, %struct.netent_data** %5, align 8
  %134 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %133, i32 0, i32 1
  %135 = load i8**, i8*** %134, align 8
  %136 = load %struct.netent*, %struct.netent** %4, align 8
  %137 = getelementptr inbounds %struct.netent, %struct.netent* %136, i32 0, i32 1
  store i8** %135, i8*** %137, align 8
  store i8** %135, i8*** %10, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %216

140:                                              ; preds = %125
  %141 = load i8*, i8** %6, align 8
  store i8* %141, i8** %9, align 8
  br label %142

142:                                              ; preds = %197, %162, %140
  %143 = load i8*, i8** %9, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i8*, i8** %9, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %145, %142
  %151 = phi i1 [ false, %142 ], [ %149, %145 ]
  br i1 %151, label %152, label %215

152:                                              ; preds = %150
  %153 = load i8*, i8** %9, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 32
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load i8*, i8** %9, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 9
  br i1 %161, label %162, label %165

162:                                              ; preds = %157, %152
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  br label %142

165:                                              ; preds = %157
  %166 = load i8**, i8*** %10, align 8
  %167 = load %struct.netent_data*, %struct.netent_data** %5, align 8
  %168 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %167, i32 0, i32 1
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* @_MAXALIASES, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %169, i64 %172
  %174 = icmp uge i8** %166, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %215

176:                                              ; preds = %165
  %177 = load i8*, i8** %9, align 8
  %178 = call i8* @strpbrk(i8* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %178, i8** %6, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %6, align 8
  store i8 0, i8* %182, align 1
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @strlen(i8* %185)
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = load i8*, i8** %8, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = ptrtoint i8* %188 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  br label %215

197:                                              ; preds = %184
  %198 = load i8*, i8** %7, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i32 @strlcpy(i8* %198, i8* %199, i32 %205)
  %207 = load i8*, i8** %7, align 8
  %208 = load i8**, i8*** %10, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i32 1
  store i8** %209, i8*** %10, align 8
  store i8* %207, i8** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i8*, i8** %7, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %7, align 8
  %214 = load i8*, i8** %6, align 8
  store i8* %214, i8** %9, align 8
  br label %142

215:                                              ; preds = %196, %175, %150
  br label %216

216:                                              ; preds = %215, %125
  %217 = load i8**, i8*** %10, align 8
  store i8* null, i8** %217, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %218

218:                                              ; preds = %216, %84, %40, %30
  %219 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @RES_SET_H_ERRNO(i32, i32) #2

declare dso_local i32 @__res_state(...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @inet_network(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
