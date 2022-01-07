; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_retip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_retip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hdr = type { i32 }
%struct.ah = type { i32, i32 }
%struct.ip6_hbh = type { i32, i32 }
%struct.ip6_dest = type { i32, i32 }
%struct.ip6_frag = type { i32 }
%struct.ip6_rthdr = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IP6\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HBH \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DSTOPT \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FRAG \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"RTHDR \00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"ICMP6: type = %d, code = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ESP\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"TCP: from port %u, to port %u (decimal)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"UDP: from port %u, to port %u (decimal)\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Unknown Header(%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_hdr*, i32*)* @pr_retip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_retip(%struct.ip6_hdr* %0, i32* %1) #0 {
  %3 = alloca %struct.ip6_hdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ah, align 4
  store %struct.ip6_hdr* %0, %struct.ip6_hdr** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.ip6_hdr*, %struct.ip6_hdr** %3, align 8
  %10 = bitcast %struct.ip6_hdr* %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.ip6_hdr*, %struct.ip6_hdr** %3, align 8
  %13 = bitcast %struct.ip6_hdr* %12 to i32*
  %14 = ptrtoint i32* %11 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %149

21:                                               ; preds = %2
  %22 = load %struct.ip6_hdr*, %struct.ip6_hdr** %3, align 8
  %23 = call i32 @pr_iph(%struct.ip6_hdr* %22)
  store i32 4, i32* %7, align 4
  %24 = load %struct.ip6_hdr*, %struct.ip6_hdr** %3, align 8
  %25 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %5, align 8
  br label %31

31:                                               ; preds = %137, %21
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = icmp sge i64 %37, 8
  br i1 %38, label %39, label %138

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %126 [
    i32 132, label %41
    i32 135, label %53
    i32 133, label %65
    i32 130, label %71
    i32 131, label %83
    i32 134, label %90
    i32 129, label %92
    i32 128, label %109
  ]

41:                                               ; preds = %39
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %5, align 8
  %44 = bitcast i32* %43 to %struct.ip6_hbh*
  %45 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = shl i32 %47, 3
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = bitcast i32* %49 to %struct.ip6_hbh*
  %51 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %129

53:                                               ; preds = %39
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32*, i32** %5, align 8
  %56 = bitcast i32* %55 to %struct.ip6_dest*
  %57 = getelementptr inbounds %struct.ip6_dest, %struct.ip6_dest* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = shl i32 %59, 3
  store i32 %60, i32* %7, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = bitcast i32* %61 to %struct.ip6_dest*
  %63 = getelementptr inbounds %struct.ip6_dest, %struct.ip6_dest* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  br label %129

65:                                               ; preds = %39
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 4, i32* %7, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = bitcast i32* %67 to %struct.ip6_frag*
  %69 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %129

71:                                               ; preds = %39
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32*, i32** %5, align 8
  %74 = bitcast i32* %73 to %struct.ip6_rthdr*
  %75 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = shl i32 %77, 3
  store i32 %78, i32* %7, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = bitcast i32* %79 to %struct.ip6_rthdr*
  %81 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %6, align 4
  br label %129

83:                                               ; preds = %39
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %88)
  br label %151

90:                                               ; preds = %39
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %151

92:                                               ; preds = %39
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 256
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 256
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %99, i32 %107)
  br label %151

109:                                              ; preds = %39
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 256
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 256
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %120, %123
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %116, i32 %124)
  br label %151

126:                                              ; preds = %39
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  br label %151

129:                                              ; preds = %71, %65, %53, %41
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %5, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = icmp uge i32* %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %149

137:                                              ; preds = %129
  br label %31

138:                                              ; preds = %31
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = ptrtoint i32* %139 to i64
  %142 = ptrtoint i32* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 4
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %149

147:                                              ; preds = %138
  %148 = call i32 @putchar(i8 signext 10)
  br label %151

149:                                              ; preds = %146, %136, %19
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %147, %126, %109, %92, %90, %83
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pr_iph(%struct.ip6_hdr*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
