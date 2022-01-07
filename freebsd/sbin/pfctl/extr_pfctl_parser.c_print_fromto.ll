; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_fromto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_fromto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule_addr = type { i32*, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@PF_OSFP_LEN = common dso_local global i32 0, align 4
@PF_ADDR_ADDRMASK = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@PF_OSFP_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" all\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" from \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" os \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" to \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_fromto(%struct.pf_rule_addr* %0, i64 %1, %struct.pf_rule_addr* %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pf_rule_addr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pf_rule_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.pf_rule_addr* %0, %struct.pf_rule_addr** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.pf_rule_addr* %2, %struct.pf_rule_addr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* @PF_OSFP_LEN, align 4
  %18 = mul nsw i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %23 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PF_ADDR_ADDRMASK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %97

28:                                               ; preds = %7
  %29 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %30 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PF_ADDR_ADDRMASK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %97

35:                                               ; preds = %28
  %36 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %37 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* @AF_INET6, align 4
  %42 = call i64 @PF_AZERO(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %35
  %45 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %46 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* @AF_INET6, align 4
  %51 = call i64 @PF_AZERO(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %44
  %54 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %55 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* @AF_INET6, align 4
  %60 = call i64 @PF_AZERO(i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %53
  %63 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %64 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* @AF_INET6, align 4
  %69 = call i64 @PF_AZERO(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %62
  %72 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %73 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %71
  %77 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %78 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %76
  %82 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %83 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %88 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @PF_OSFP_ANY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %185

97:                                               ; preds = %91, %86, %81, %76, %71, %62, %53, %44, %35, %28, %7
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %100 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %97
  %106 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %107 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %106, i32 0, i32 2
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @print_addr(%struct.TYPE_6__* %107, i32 %108, i32 %109)
  %111 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %112 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %105
  %116 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %117 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %120 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %8, align 8
  %125 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @IPPROTO_TCP, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @print_port(i64 %118, i32 %123, i32 %128, i8* %133, i32 %134)
  br label %136

136:                                              ; preds = %115, %105
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @PF_OSFP_ANY, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i64, i64* %9, align 8
  %142 = trunc i64 %19 to i32
  %143 = call i8* @pfctl_lookup_fingerprint(i64 %141, i8* %21, i32 %142)
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %140, %136
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %147 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %148 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %145
  %154 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %155 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %154, i32 0, i32 2
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @print_addr(%struct.TYPE_6__* %155, i32 %156, i32 %157)
  %159 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %160 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %153
  %164 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %165 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %168 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %10, align 8
  %173 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* @IPPROTO_TCP, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @print_port(i64 %166, i32 %171, i32 %176, i8* %181, i32 %182)
  br label %184

184:                                              ; preds = %163, %153
  br label %185

185:                                              ; preds = %184, %95
  %186 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %186)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PF_AZERO(i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @print_addr(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @print_port(i64, i32, i32, i8*, i32) #2

declare dso_local i8* @pfctl_lookup_fingerprint(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
