; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_interfaceiter.c_linux_if_inet6_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_interfaceiter.c_linux_if_inet6_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.in6_addr = type { i8* }

@IF_NAMESIZE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@isc_lctx = common dso_local global i32 0, align 4
@ISC_LOGCATEGORY_GENERAL = common dso_local global i32 0, align 4
@ISC_LOGMODULE_INTERFACE = common dso_local global i32 0, align 4
@ISC_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"/proc/net/if_inet6:iter->proc == NULL\00", align 1
@ISC_R_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%32[a-f0-9] %x %x %x %x %16s\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"/proc/net/if_inet6:sscanf() -> %d (expected 6)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"/proc/net/if_inet6:strlen(%s) != 32\00", align 1
@linux_if_inet6_current.hex = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@AF_INET6 = common dso_local global i32 0, align 4
@INTERFACE_F_UP = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@ISC_R_IGNORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @linux_if_inet6_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @linux_if_inet6_current(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [33 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.in6_addr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %16 = load i32, i32* @IF_NAMESIZE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ISC_R_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  store i32 1, i32* %14, align 4
  br label %173

30:                                               ; preds = %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @isc_lctx, align 4
  %37 = load i32, i32* @ISC_LOGCATEGORY_GENERAL, align 4
  %38 = load i32, i32* @ISC_LOGMODULE_INTERFACE, align 4
  %39 = load i32, i32* @ISC_LOG_ERROR, align 4
  %40 = call i32 (i32, i32, i32, i32, i8*, ...) @isc_log_write(i32 %36, i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* @ISC_R_FAILURE, align 8
  store i64 %41, i64* %2, align 8
  store i32 1, i32* %14, align 4
  br label %173

42:                                               ; preds = %30
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %47 = call i32 @sscanf(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32* %8, i32* %9, i32* %10, i32* %11, i8* %20)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 6
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* @isc_lctx, align 4
  %52 = load i32, i32* @ISC_LOGCATEGORY_GENERAL, align 4
  %53 = load i32, i32* @ISC_LOGMODULE_INTERFACE, align 4
  %54 = load i32, i32* @ISC_LOG_ERROR, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32, i32, i32, i32, i8*, ...) @isc_log_write(i32 %51, i32 %52, i32 %53, i32 %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @ISC_R_FAILURE, align 8
  store i64 %57, i64* %2, align 8
  store i32 1, i32* %14, align 4
  br label %173

58:                                               ; preds = %42
  %59 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %60 = call i32 @strlen(i8* %59)
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* @isc_lctx, align 4
  %64 = load i32, i32* @ISC_LOGCATEGORY_GENERAL, align 4
  %65 = load i32, i32* @ISC_LOGMODULE_INTERFACE, align 4
  %66 = load i32, i32* @ISC_LOG_ERROR, align 4
  %67 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %68 = call i32 (i32, i32, i32, i32, i8*, ...) @isc_log_write(i32 %63, i32 %64, i32 %65, i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load i64, i64* @ISC_R_FAILURE, align 8
  store i64 %69, i64* %2, align 8
  store i32 1, i32* %14, align 4
  br label %173

70:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i32, i32* %13, align 4
  %73 = icmp ult i32 %72, 16
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = mul i32 %75, 2
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @linux_if_inet6_current.hex, i64 0, i64 0), i8 signext %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = sub i64 %81, ptrtoint ([17 x i8]* @linux_if_inet6_current.hex to i64)
  %83 = shl i64 %82, 4
  %84 = load i32, i32* %13, align 4
  %85 = mul i32 %84, 2
  %86 = add i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @linux_if_inet6_current.hex, i64 0, i64 0), i8 signext %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = sub i64 %91, ptrtoint ([17 x i8]* @linux_if_inet6_current.hex to i64)
  %93 = or i64 %83, %92
  %94 = trunc i64 %93 to i8
  store i8 %94, i8* %15, align 1
  %95 = load i8, i8* %15, align 1
  %96 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %95, i8* %100, align 1
  br label %101

101:                                              ; preds = %74
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %71

104:                                              ; preds = %71
  %105 = load i32, i32* @AF_INET6, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @INTERFACE_F_UP, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = call i32 @isc_netaddr_fromin6(i32* %115, %struct.in6_addr* %7)
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = call i64 @isc_netaddr_islinklocal(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %104
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @isc_netaddr_setzone(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %126, %104
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %159, %132
  %134 = load i32, i32* %13, align 4
  %135 = icmp ult i32 %134, 16
  br i1 %135, label %136, label %162

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %137, 8
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 -1, i8* %144, align 1
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 8
  store i32 %146, i32* %9, align 4
  br label %158

147:                                              ; preds = %136
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 8, %148
  %150 = shl i32 255, %149
  %151 = and i32 %150, 255
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 %152, i8* %157, align 1
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %147, %139
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %133

162:                                              ; preds = %133
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = call i32 @isc_netaddr_fromin6(i32* %165, %struct.in6_addr* %7)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @strncpy(i32 %170, i8* %20, i32 4)
  %172 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %172, i64* %2, align 8
  store i32 1, i32* %14, align 4
  br label %173

173:                                              ; preds = %162, %62, %50, %35, %26
  %174 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i64, i64* %2, align 8
  ret i64 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isc_log_write(i32, i32, i32, i32, i8*, ...) #2

declare dso_local i32 @sscanf(i32, i8*, i8*, i32*, i32*, i32*, i32*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @isc_netaddr_fromin6(i32*, %struct.in6_addr*) #2

declare dso_local i64 @isc_netaddr_islinklocal(i32*) #2

declare dso_local i32 @isc_netaddr_setzone(i32*, i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
